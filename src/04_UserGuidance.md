# Guidance to communicate natural capital information {#sec:UserGuide}

## Intro
### Proof of need

The display tasks gathered in the survey (detailed in section \ref{sec:survey}) appeared to be right on point as the average scores, in terms of general usefulness, were all higher than 3.5, and 84% were higher than 4.0 and 47% higher than 4.5. As these results proves the relevance of these display tasks, the structure of the present user guide will follow the same order.

### Method (?)
METHOD : Strong of the learning of the previous chapter on \ref{sec:litreview}, and the knowledge of currently used displays among ecosystem services analysts at The Natural Capital Project and beyond, this chapter proposes a toolbox to support analysts in their tasks of communicating natural capital information. This user guide is structured around 6 main topics encountered in ecosystem services analysis: portfolios, spatial and non-spatial ES model outputs, scales, uncertainty and beneficiaries. In each topic, several specific display tasks are listed and solutions are suggested (... DYNAMIC/STATIC? THESE SOL ARE STARTING POINTS THAT SHOULD BE TAILORED TO EACH CONTEXT.) 
Along with suggested tools (programming language or software), ready-to-use when available.

These solutions were (subjectively?) selected based on several criterion (see section \ref{sec:criterion}). However, when it comes to data visualization and clarity, some subjectivity cannot be avoided ..

Also, data visualization is really a case-by-case and efficient displays really depends on the underlying data and information to convey. This user guidance aims to serve as a basis suggesting several options to be (se réapproprier) by the analyst. 

##Spatial data: portfolios and ES model outputs
Suggested tool: QGIS (or ArcGIS, with requires a license) (CV / HRA Dashboards)
*Possible tools : ArcGIS, QGIS, PyGeoprocessing, Python, matplotlib, R, CV / HRA Dashboards*

###Display a portfolio *//repeats 3.2.2 ?*
Static maps are relevant for this simple case. Careful care must be given to symbology, see recommendations in section \ref{sec:colors}.

###Compare 2 maps *// refer to : 3.2.3.1.1 + 3.2.3.2.1 + 3.2.3.3.1*
#### Portfolios (categorical) *// refer to (spatial) 3.2.3.1.1 , non spatial: 3.2.3.2.1*
**USE CASES**: Comparing categorical data, such as portfolios to highlight agreement and disagreement on recommended action, in contexts of scenario planning or optimization. 
**SUGGESTIONS** : Again, maps are relevant. Often, analysts like to flip back and forth between the two portfolios. This is easy to do in GIS softwares. Nevertheless, this interactive solution doesn't apply to static documents. For static documents, there are 2 options: two side-by-side maps, or a single map showing which areas are consistently selected. (IN WHICH CASE IS WHICH BETTER ?)

#### ES model outputs (continuous) *// refer to (spatial) 3.2.3.1.1 , non spatial: 3.2.3.3.1*
**USE CASES**
It can also be continuous data, ES model outputs such as objective scores at pixel or polygon level. Goal is to understand similarity and differences between maps of two ES under one scenario, or the maps of same ES under two scenarios.
**SUGGESTIONS** 
Depends on what's being modeled. Might calculate numerical difference in ES between 2 scenarios, or take top 20% of service for two ES and find areas of overlap. (Stacie)
Side-by-side maps

###Compare many maps *// refers to : 3.2.3.1.2 + 3.2.3.2.2 + 3.2.3.3.2*
**USE CASES**
CATEGORICAL portfolios "to understand trends in agreement and disagreement on recommended action. e.g optimization, land use change modeling"
CONTINUOUS Understand similarity and differences between maps of ES model outputs e.g e.g objective score maps associated with many points on an optimization frontier, ES maps generated under many combinations of scenarios or parametric uncertainty

**SUGGESTIONS**
#### Portfolios (categorical) 
Map showing which areas are consistently selected - for each scenario assign 1 if selected, 0 if not, add up across scenarios
aggregate results across rasters or globally and plot them.
Spatial display : agreement maps

Non-spatial displays: 
Usually turn towards a tabular representation (non-spatial) and using total values (or subcategorized values) for comparison (ROB)

#### ES model outputs (continuous)
Can also use the method of taking top 20% of service and seeing overlap between scenarios. Otherwise, it's often just looking at ES results side by side.
agreement/correlation maps.

In the past for PPFs using raster data, I have converted cells to points in ArcGIS and attached service values at each point to the attribute table. With fine scale rasters of spatially continuous service value, it is usually only necessary to extract a sample of these points into a data. This data is then imported into R for visualization and further processing. I have traditionally handled visualizing uncertainty via tabular representations, as spatial representations can often be difficult to digest. 

**MUST CHOOSE ONE "BEST" SOLUTION IN EACH CASE OR AN EXAMPLE, OTHERWISE IT'S JUST A REPETITION OF LITERATURE REVIEW !!**

###Relationship/agreement between two variables 
>> Myanmar p.43 combine 2 maps www.myanmarnaturalcapital.org/en/ecosystem/provide-habitat

### Specific portfolios displays
####Agreement on doing an (any) activity across portfolios
Where do scenarios* agree that SOMETHING should be done ?

* binary "footprint" that gets a 1 if a pixel is ever chosen.
* Map showing which areas are consistently selected - for each scenario assign 1 if selected, 0 if not, add up across scenarios
agreement maps

####Agreement on specific activity across portfolios
Where do pixel agree on WHAT should be done ? 

* agreement maps
* Number of portfolios that choose the modal value for a pixel divided by total number of portfolios

### Specific spatial ES model outputs displays
(continuous data, at pixel or polygon level. e.g objective scores)"

#### Spatial prioritization of intervention(s)
maps of activity locations with different colors for each activity, using pixel- or polygon- data outputs from RIOS or ROOT. And/or a table summarizing ha in each intervention by administrative area or sub-watershed. (Example? Adrian)
#### Impact of intervention on a specific ES metric
Where in space does a given intervention or scenario improve or worsen a specific ES metric? e.g Where does an activity contribute to objectives ?

1. We've usually just looked at overall change in ES between baseline and scenario, after implementing the intervention, either as a single value over an area of interest, or as a change map side by side with the intervention map
2. difference map based on InVEST output from baseline and intervention scenarios.

#### Location of synergies/tradeoffs of intervention/scenario on multiple ES metrics
 Where does an intervention move multiple ES metrics (aka objectives) in the same direction ? Where are the "win-wins"? Where in space is a given intervention or scenario contribute to some metrics at the expense of others?

1. We've either shown change maps for each ES alongside each other, or " (Example? Stacie)
2. side by side
3. easy, quantitative comparison of scenarios is more cumbersome 

##### Subquestion : Intensity of tradeoffs and synergies in space
Where are tradeoffs more or less stark?

## Display non-spatial ES model outputs (aggregation of service/objectives across a landscape) // *refers to 3.2.3.2 + 3.2.3.3?*
{== This is just displaying MANY non-spatial summary of spatial data : right ? ==}

**Goal understand trade-offs and synergies between objectives under several scenarios.**

2. tabular data (rich)
3. combine variables until it is 2 dimensions, then scatter plots, or lots of scatter plots (Ryan)
4. 
###Small number of scenarios (< 3)
Use examples : e.g  Scenario comparison, multi-objective optimization

1. some sort of line graph (Stacie?)

3. Bar plots, maps with results aggregated to regions. series of small multiple graphs maps, for each scenario or for each service
#### 2 or 3 objectives
#### many objectives

###Many scenarios
Use examples (many scenarios) : Multi-objective optimization under uncertainty
#### 2 or 3 objectives
2 obj : trade-off curve
3 obj : 3-d scatter plot, tradeoff curve with color or shape annotation, parallel axis plot
#### many objectives
Parallel axis plot

##Scale {== (maybe remove this section? not much interest/infos) ==}
###Consistency of spatial pattern in pixel data (at coarser resolution)###Display fine-scale data aggregated by polygons

##Characterize uncertainty displays *refers to /ref{sec:uncertainty}*
Distribution/histogram plots (rich)
viz in tables: Uncertainty seems best understood in an aspatial manner or over a small set of discrete spatial bundles. (rob)
 narrative format (eric)###set of non-spatial input parameters###spatial model inputs
sensitivity analysis: Adrian: we have methods for showing which input parameters influence outputs non-spatially, not sure what would be gained by doing this spatially.###spatial model output - derived from multiple runs
maps indicating range or measures of dispersion -- either next to map of construct of interest, or as transparency/grayness or something. (Ben)### spatial model output - derived analytically or qualitatively
sensitivity analysis packages in multiple languages (SAlib for python, sensitivity for R)
###Characterize contribution of different uncertainty sources (to output uncertainty)

##Displaying the beneficiaries
Growing interest in this topic (from survey). Very context specific.
Good example to cite : myanmar people (display-examples/people_depend)

###Show/quantify beneficiaries impact (by subgroups)###Location of beneficiaries in space 
Iwe only represent this by generalized population groups, could get better at disaggregating?###Contrast beneficiary distribution in space with service distribution in space

##Summary and useful references
###Key take-aways
context specific.

###Useful tools
Parallel coordinates plots

* https://reed.cee.cornell.edu/parallel-axis/
* http://syntagmatic.github.io/parallel-coordinates/
* in Python : https://waterprogramming.wordpress.com/2016/09/12/easy-vectorized-parallel-plots-for-multiple-data-sets/
* in R (linked with a 3D scatterplot): OpenMORDRM