# Lightweight Modular Staging
To understand the design of the Delite framework, we first have to take a step back and explain the inner workings of LMS. This section explains in detail the intermediate representation (IR) that LMS uses to model computations. We also briefly explain the mechanism that is used to lift programs into IR as well as the interface used to express IR transformations.

## Sea of Nodes
The format that LMS uses [@lms] for its IR is based on expression trees and single static assignments (SSA). More exactly, it uses what is called a "sea of nodes" representation. 

The IR is composed of a collection of statements, or typed pairs (TP). Every pair contains a symbol and a definition. A symbol is a simple reference to the statement it defines. Definitions are used to express how expressions can be combined. Expressions are restricted to symbols and constants. The typing information is expressed using Scala's type system and stored in a type class within each symbol.

Here is a summary of the types used in the IR:

```scala
trait Exp[+T]

// Constant expression of type T
case class Const[T](x: T) extends Exp[T]
// Symbol referencing a definition of type T        
case class Sym[T](id: Int) extends Exp[T]  

// Composite node that is defined by a library or DSL author
trait Def[+T]

// Statement in the IR
case class TP[+T](sym: Sym[T], rhs: Def[T])
```

`Exp[T]` is an interface that represents an expression of type `T`. Constants and symbols are the only elements implementing that interface. Composite operations are defined using `Def`s and can only reference symbols or constants. All the symbols that are referenced by a definition are called its dependencies and can be queried through the `syms` function.

During program evaluation, each definition is associated with a symbol, and that symbol is returned in place of the value for use in subsequent operations (see [@virtualization] & [@tagless] for the mechanism through which this is achieved). This allows LMS to automatically perform common sub-expression elimination (CSE) on the IR. Every repeated definition in the user's program will be associated with the same symbol in the generated IR. To illustrate how it works, consider the following example.

```scala
val x1 = x0 + 2
val x2 = x1 > 13
val x4 = if ( x2 ){
  val x3 = x1 * 3
  x3
} else {
  val x1bis = x0 + 2
  x1bis
}
```

The resulting IR would resemble something like this

```scala
TP(Sym(1), IntPlus(Sym(0), Const(2)))
TP(Sym(2), OrderingGT(Sym(1), Const(13)))
TP(Sym(3), IntTimes(Sym(1), Const(3)))
TP(Sym(4), IfThenElse(Sym(2), Sym(3), Sym(1)))
```

As we can see, the computation for `x1` has not been duplicated for `x1bis`. Because it is the same value, LMS returned `Sym(1)` instead of creating a new symbol for the `IfThenElse` definition.

## Scheduling
Since there is no explicit ordering of statements in the IR, we need an additional step to generate code. This step is called scheduling. Starting from the result expression of the program, the scheduler walks the list of dependencies backwards to collect all of the 
statements that will compose the program. It then sorts them in order such that any statement comes after its dependencies. The resulting schedule can then be used to generate code that will respect the semantics of the original program.

## Blocks & Scopes
If we want to generate efficient code, we need to be able to represent structured computations in our IR. Loops and conditional statements cannot be considered in the same way as other definitions, because the dependency semantics are different than with other statements. 

The problem becomes obvious when we look at the example we presented above. If we follow the naive scheduling algorithm, the  natural ordering of the IR would result in a valid schedule. We can notice, however, that both branches of the conditional are scheduled before the condition is even evaluated. This does not cause any inconsistencies in our toy example. However, it may lead to unused expensive computations. If one of the branches contains side effects, it is not only wasteful, but also illegal, as it changes the semantics of the original program.

To work around this problem, LMS provides a `Block` definition wrapper for a symbol. It does not contain any structural information other than the result statement of the block. A block carries the semantic information that its contents belong to a different scope and should thus be treated differently by the scheduler.

## Transformers and Mirroring
As we've seen in previous sections, LMS automatically performs some generic optimizations such as CSE and DCE. For more specific optimizations, LMS provides a transformation interface.

A transformer is defined at its core as a function from expression to expression. Transformers leverage the scheduler to walk through the IR in order. They traverse a schedule in order and process each statement to decide whether it needs to be transformed. Even when a statement is not modified, its dependencies might have been changed. When this is the case, an updated version of the node has to be generated to reflect these new dependencies. In LMS, this process is called mirroring.

Since the IR is immutable, mirroring does not actually modify any nodes but generates new ones. LMS users can take advantage of that fact by defining generator functions that can perform domain-specific optimizations. Depending on the updated dependencies, it might be possible to return a simplified version of the node. 

When defining a simple language to add two integers, for example, we might be able to fold certain operations when the operands are statically known.

Given the `int_plus` generator and mirroring rule below:

```scala
case class IntPlus(x: Exp[Int], y: Exp[Int]) extends Def[Int]

def int_plus(x: Exp[Int], y: Exp[Int]): Exp[Int] = (x, y) match {
    case (Const(a), Const(b)) => Const(a + b)
    case _ => IntPlus(x, y)
}

def mirror(e: Def[A], f: Transformer): Exp[A] = e match {
    case IntPlus(x, y) => int_plus(f(x), f(y))
    case _ => super.mirror(e, f)
}
```

We can write a transformer that resolves the sizes of all collections statically [^1lms]:

```scala
case class ArraySize(arr: Exp[Array[Int]]) extends Def[Int]

case class SizeResolver extends Transformer {
    def apply[A](x: Exp[A]): Exp[A] = x match {
        // all of our array have the same size
        case Def(ArraySize(arr)) => Const(100)
        case _ => mirror(x, this)
    }
}
```

LMS can then take advantage of any constant folding opportunity.

```scala
val x = new Array(100)
val res = x.size + 5
```

After lifting we have:

```scala
TP(Sym(1), ArrayNew(Const(100))
TP(Sym(2), ArraySize(Sym(1)))
TP(Sym(3), IntPlus(Sym(2), Const(5)))
```

After transformation this whole program collapses to `Const(105)` because the `int_plus` generator was able to statically fold the original `IntPlus` definition after the mirroring operation updated its dependencies.

[^1lms]: the `Def` extractor is a utility that can be used to retrieve the definition associated with a symbol