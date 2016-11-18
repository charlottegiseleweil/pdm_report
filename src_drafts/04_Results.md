# Results
the decision toolbox (and maybe, ideally = User’s guide to displaying/communicating natural capital informations)

example table:

| Name                              | Description                                           |
| --------------------------------- | ----------------------------------------------------- |
| Device Independent Lowering       | Lowers DSL definitions into generic Delite operations such as loop traversals |
| Device Dependent Lowering         | Performs additional transforms specific to the  target platform |
| `Multiloop SoA`                   | Preforms `ArrayOfStruct` to `StructofArray` optimization | 
| Vertical Loop Fusion              | Fuses producer and consumer loops to eliminate intermediate data structures |
| Horizontal Loop Fusion            | Fuses loops that iterate over the same range | 


![Delite `Elem`s Hierarchy](https://www.dotty.ch/g/png?
  digraph G {
    rankdir=BT;
    node[shape=box,style=filled];
    Def [color=gray];
    ;
    LoopElem [color= salmon];
    ;
    HashElem [color=salmon];
    HashElem -> Def;
    ;
    HashIndexElem [color=salmon];
    HashIndexElem -> HashElem;
    HashIndexElem -> LoopElem;
    ;
    CollectBaseElem [color=salmon];
    CollectBaseElem -> Def;
    CollectBaseElem -> LoopElem;
    ;
    FoldElem [color=salmon];
    FoldElem -> CollectBaseElem;
    ;
    ReduceElem [color=salmon];
    ReduceElem -> CollectBaseElem;
    ;
    CollectElem [color=salmon];
    CollectElem -> CollectBaseElem;
    ;
    HashReduceElem [color=salmon];
    HashReduceElem -> HashElem;
    HashReduceElem -> LoopElem;
    ;
    HashCollectElem [color=salmon];
    HashCollectElem -> HashElem;
    HashCollectElem -> LoopElem;
    ;
    ForeachElem [color=salmon];
    ForeachElem -> Def;
    ForeachElem -> LoopElem;
  }
)