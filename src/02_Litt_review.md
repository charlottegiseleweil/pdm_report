# Design strategies for complex information display

This chapter consists in a literature review on static and dynamic approaches to displaying multidimensional and uncertain data. It aims to explore the design strategies to express and display multi-dimensional, spatial, multi-objective and uncertain data.
 
 
>*"Excellence in statistical graphics consists of complex ideas communicated with clarity, precision and efficiency."*
> 
> *Edward Tufte*

##Elements of data visualization
###Introduction
Information visualization, or visual communication, consists in transforming complex and abstract data into a accessible and concrete form, that a human brain can perceive with as little as possible cognitive processing. It consists simply in encoding data into visual objects, such as lines or points. 

In order to communicate fact-based information clearly and efficiently, one needs to use tools allowing to gain quick insight from the data. This is the purpose of information visualization. In other words, a clear visualization helps understand complex data. Moreover, in the case of high-dimensional outputs, sophisticated analytical approaches are required, and display tools supports these. Effective data visualization takes into account human perception and desicion making process, aesthitical considerations, statistical mathematical precision and more. It is an interdisciplinary work including statistics, graphic design, visual art, perceptual psychology and cognitive science. The following sections aim to introduce some basic principles of data visualization, to set the ground for further exploration of more specific display needs.
###Notions in data visualization 

####Modes of visualization
* Static presentation : Required for printed format, static presentations are essential. In the context of inter-orgational projects defined in time, there is almost always a need to summarize results in final reports. * Dynamic user-interactive visualisations gives the greatest flexibility to the user who is given options to test and visualize results while having control on parameters. User interactivity enhances the user's implication (REF TODO). Dynamic displays offers many options to tailored and multi-dimensional visualizations. The following section will detail some of the main features of interest.* Interactive storytelling is the in-between between the two previous visualization modes. Especially useful during presentations, but also on interactive webpages, the dynamic storytelling allows the flexibility and multi-dimensional displays options of dynamic visualizations, while keeping control on the selected options, i.e walking the user through the visualisation to lead to the envisioned goal. From the user's perspective, there is less flexibility to try options than in a dynamic display, but the main message can be more easily conveyed than in a single static display. 

####Vocabulary
A graphic, or a plot consists in at least one dataset translated into a set of mappings (i.e visual encodings), forming layers that are statistically transformed according to the scale, and the coordinate system. (TODO: + the facet specification (Faceting (includes : conditioning, trellising, and latticing) = produces small multiples showing different subsets of the data.)Dynamic features of interest include :

-	Scaling, which is simply zooming in and out but is powerful in the sense that it allows the user to both global view of the whole dataset and precise details on smaller fluctuations, where that would be impossible in a static display.-	Identification (also called pointing) allows access to detailed information of a subset of the graph by clicking on it.-	Generalized selection extracts every point that is similar to the user’s selection for an overview of subsets.-	Brushing consists in selecting a subset of data, that is then highlighted. Also, brushing can be used to remove unwanted data, when a specific threshold is required [@Kollat_Video]
- Linking adds value to brushing, it is the dynamic update of the other graphs displayed, to higlight the corresponding  «brushed» selection. (TODO have an example?). 
###Graphical best practices and guidelines

#### What makes a good visualization ?

Keeping in mind the goal which is to gain insight on the data, an efficient visualisation limits the cognitive process of understanding the graph, in order to bring the observer's attention on the actual facts. Some may seem trivial, nevertheless the guidelines summarized in the following paragraphs are essential to achieving the visualisation's purpose. 

>*«Graphical displays should:*
>- *show the data*-	*induce the viewer to think about the substance rather than about methodology, graphic design, the technology of graphic production or something else*-	*avoid distorting what the data has to say*-	*present many numbers in a small space*-	*make large data sets coherent*-	*encourage the eye to compare different pieces of data*-	*reveal the data at several levels of detail, from a broad overview to the fine structure*-	*serve a reasonably clear purpose: description, exploration, tabulation or decoration*-	*be closely integrated with the statistical and verbal descriptions of a data set. »* 
>
> Edward Tufte, in *The Visual Display of Quantitative Information* [@tufte]

Best practices seem to be summarized by three main points, that will therefore be used as criteria for success throughout this study. An efficient display should

1. convey the key message; good visualizations are task dependant, the organisation of the display is closely related to the phenomena considered, and crucial to understand in that perspective [@cbo]
2. be self-explanatory (including its legend, and possibly the use of storytelling)
3. tailor to the intended audience.

#### Aesthetics and layouting
TODO: In terms of aesthetics and graphical choices, readibility should always be a priority. Some key rules needs to be considered : about color scheme (colorblind safe, intuitive hue(...) [Colorbrewer]), but also legend, and ordering (by some properties of data, never alphabetically: a space to express something about the data would be neglected)... Layouting, selecting apporpriate scales and aspect ratios (there is always trade-offs between showing the zero, or zooming on fluctuations)

####Colors
In terms of aesthetics and graphical choices, readibility should always be a priority. Some key rules needs to be considered : about color scheme (colorblind safe, intuitive hue(...) [Colorbrewer]), but also legend, and ordering (by some properties of data, never alphabetically: a space to express something about the data would be neglected)... Layouting, selecting apporpriate scales and aspect ratios (there is always trade-offs between showing the zero, or zooming on fluctuations)

(TODO ask Ben about his issues w/ colors)

The careful choice of the color scheme is not be neglected. Sequential color scheme ought to be chosen when the underlying data shows ranked differences; diverging scheme when dealing with negative and positive differences around a mean or a neutral value; and a categorical scheme for discrete values (such as land cover types). (TODO https://tilemill-project.github.io/tilemill/docs/guides/tips-for-color/)

Moreover, many sources suggests to use only a few colors (about 6), while choosing them distinctive, and striving for color harmony. Cultural conventions and intuitive hue facilitate fast perception. Colorblind and printing safe schemes are prudent. Also, the color scale should be normalized, considering which datapoints should appear in different categories.

####Zooming
TODO: magnification, fishe-eye view (Leung and Apperley 94), difocal distortion ...
### Available computational tools
TODO:
Softwares (Tableau...)
Visualization libraries (D3.js (used to be protovis)...)
GIS softwares (ArcGIS, QGIS)
##Specific data visualization challenges et strategies
###Displaying multi-dimensional data

####Flow maps

This epic figurative map, drawn up by M. Minard in 1869, depicts the successive losses in men of the French amry in the Russian campaign of 1812-1813. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.*
![Minard's Napoleon's March figurative map. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.* ](https://upload.wikimedia.org/wikipedia/commons/2/29/Minard.png)
It figures multi-variate data, including 6 dimensions that are the army size, its direction, its location in (x,y) coordinates, the dates and the temperature in the lower part of the display. *"The best statisctical graphic ever drawn"* according to Edward Tufte is an example of displaying complexity with clarity.

Interestingly, Wickham ([@wickham08]) attempted to reproduce this visualisation, with today's computational tools, namely the R library used here is ggplot. This may show limit of the computational tools, but also one may argue that Minard's map is not applicable to dataset of a bigger order of magnitude. Overall, it highlights that each visualisation is very specific to the case considered, its data and its aim. 
![Reproduction of Minard's Napoleon's March with ggplot [@wickham08]](../images/minard_ggplot_2.png)

![Another modern reproduction of Minard's Napoleon's March overlaying a map [@Tour]](../images/napoleon_1.png)

####Small Multiples
An effective alternative to coercing all the data in a single plot (risking overplotting) is displaying small multiples. The concept is to replicate the same simple graph structure (in terms of axis, shape and scale), for many datasets, ordered logically. The cognitive process of understanding the graph is undertaken only once, and the understanding then is replicated while scanning all other multiples. 

This strategy is very efficient in many cases for comparison. Refered by Edward Tufte as "multivariate and data bountiful", they enforces comparisons of alternatives, differences and changes [@Tufte2]. This displaying startegy has also been called trellis chart, lattice chart, grid chart, or panel chart. It can be applied to many types of graphs.

![Small multiples applied to (a) line plots [@small_mult_lines] and (b) spatial data [@small_mult_maps]](../images/smallmultiples.png)

####Scatterplots
#####Scatter plot matrix
#####3D Scatterplot

#### Other statistical distributed data displays
[@Tour]
 Stem-and-Leaf Plots
 Q-Q Plots
 
####Time-series data: line charts, streamgraphs
For data including several independant variables, and a dependant one, line charts is a version of a scatter plot where points are ordered (on the x-axis), and joined with segments. Line charts, or run charts (for time-series data) or index charts (its interactive form) highlights relative changes, these are a good options when comparing the independant variables. Streamgraphs, also called stacked graphs, sums visually the time-series values around a central axis by stacking area charts on top of each other [@Tour].

In the case of very large timeseries datasets, horizon graphs is a very space-effective option, depsite its certain learning time. Horizon graphs consists in filled line charts, where negative values are mirrored (and colored typically in red) and then the chart divided into bands that are overlayed using transparency effects; the space used is divided by four thanks to these two transformations [@horizon]. When the goal is to compare monthly values over the years and the different year, a fairly recent display solution has been suggested: temporal maps [@temporalmap]

![Line chart and streamgraph](../images/find_examples.png) *Make these display examples one figure?*
![Horizon graphs[@horizon]](../images/horizon_1.png) 
![Temporal map[@temporalmap]](../images/temporal_map.png)


####Other TODO
TODO
####Choice modeler approach, for mutiple inputs TODO
Choice Modeler: A Web-based Spatial Multiple Criteria Evaluation Tool. CM : tool used for evaluation of decision variants. To reduce the cognitive complexity of the decision space characterized by multiple decision options, evaluation criteria, and criterion weights. This is achieved by incorporating in CM the sensitivity analysis functions for the identification of criteria that do not influence the decision option ranking. Users can remove such criteria from further consideration and thus lessen the cognitive burden of evaluation, which may be essential in multi-stakeholder participatory decision processes.  [ TODO Piotr, 2008 : https://web.a.ebscohost.com/ehost/detail/detail?sid=d823dd5b-5edc-4b96-ba8d-f20ccf16b46d%40sessionmgr4006&vid=0&hid=4209&bdata=JnNpdGU9ZWhvc3QtbGl2ZSZzY29wZT1zaXRl#AN=33334407&db=bth]
###Displaying multi-objective optimization problems (TODO: merge with previous?)
*Vocabulary note: "multi-objective" refers here to problems with three or more objectives, also called many-objective problems [@Fleming05] or high order-Pareto optimization problems [@Reed04]*

Visual decision support tools are very relevant in the field of multi-objective optimization problems. In the multi-objective typical cases, there is no unique optimal solution, but a collection of Pareto optimal ones [@Hadka2015], i.e solutions where improving the result towards one objective result a decrease in performance with regards to another objective  [@paretoUNIL]. Efficient visualizations empower the user with the ability to navigate through thousands of potential solutions, compare them and understand trade-offs, leading to performant decision-making. 

#### 3D Scatterplot
Up to four objectives can be represented in a 3D scatterplot to which a color scale is added. Solutions are represented as points in the space. Additional objectives could be represented by varying orientation, shape or size of the points. However, it is likely to overwhelm the plot. Interactivity allows the user to perform selections of one or multiple solution point(s). 

![(TODO:Maybe remove this figure) An example of multi-objective display from an interactive software: 3D scatterplot (left panel) and TODO? (right panel). This  visual decision support tool was developped in 2007 to display to multi-objective Pareto optimization solution sets. VIDEO (Visually Interactive Decision-making and Design using Evolutionary Multi-objective Optimization) takes advantage of interoperability of Python and speed of C++ (through the use of the Visualization ToolKit VTK). The interface is divided in an objective space window and a decision space window [@Kollat_Video].](http://ars.els-cdn.com/content/image/1-s2.0-S1364815207000308-gr1.jpg)

#### Parallel coordinates plot
Parallel coordinates plots are very efficient to display different solutions in multi-objective context. The number of objectives is then nearly unlimited, they are listed horizontally; solutions are represented as lines, distinguised by varying colors. The vertical direction of preferred solution must be clearly indicated to assist interpretation.

![Four objectives visualisations with (a) 3D scatterplot and colors and (b) parallel coordinate plot, achieved with the OpenMORDM open-source R library [@Hadka2015]](http://ars.els-cdn.com/content/image/1-s2.0-S1364815215300190-gr3.jpg)

Woodruff et al, MOVA, Many objective visual analytics: rethinking the design of complex engineered systemsmutli-objective Visual analytic tools (MOVA), +++ : adding objectives and reducing aggregation (to a ten-objective problem formulation)


###Displaying spatial data 
####Cartographic projections
TODO
####

####Other
(grid-based maps)
hotspot map A heatmap uses colour mapping (sometimes called pseudo- colouring) to visualize a scalar function over a 2D region [Brodlie]

####Chloropleth maps and proportional symbol maps
Spatial data is often aggregated by regions *//compare pixel scale*, then a vairable of interest can be expressed by coloring, or using different patterns these defined areas. Particular attention needs to be given to the choice of patterns (see Colors TODO Renvoi). In normalizing raw data values. [@Tour]

Another solution to represented spatial data aggregated by regions is the graduated symbol map (or proportional symbol map) that overlays symbols to the base map. In this case, the underlying area does not affect the perception of the variable considered [@Tour]. These two approaches can also be combined. 

The dot distribution map is a variant of these, where the density of dots represents the intensity of the variable. 

Visually more straight-forward than an isopleth map (TODO RENVOI), and statistically more precise than a chloropleth map, a dasymetric map can be build. Relying on additional informations on the data, it models the distribution of the variable, even within the geographical units. However, it is more complex to build, and not supported by most GIS softwares, therefore not very common.

![Chloropleth map and graduate symbol map](../images/find_examples.png)

####Isopleth maps
Also know by contour maps, or isarithmic maps, they display variable with contour lines (isopleth) joining the points where the variable has a constant value. In the field of ecoogy, isoflors are isopleths connecting areas of comparable biological diversity [@isoflor]

####Cartograms
Cartogram also illustrate data aggregated over regions. The variable to be expressed is substituted to the geographical distance. The regions are in the same locations with respect to each other, but their geometry is distorted proportionally to the variable of interest. 

![Cartogram](../images/find_examples.png)


#### Flow maps : spatial data and multi-dimensionality
A flow map illustrate movement in space and/or in time. Its great strength is its capacity to encode many variables. 

This epic example of flow map, drawn up by M. Minard in 1869, depicts the successive losses in men of the French amry in the Russian campaign of 1812-1813. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.*
![Minard's Napoleon's March figurative map. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.* ](https://upload.wikimedia.org/wikipedia/commons/2/29/Minard.png)
It figures multi-variate data, including 6 dimensions that are the army size, its direction, its location in (x,y) coordinates, the dates and the temperature in the lower part of the display. *"The best statisctical graphic ever drawn"* according to Edward Tufte is an example of displaying complexity with clarity.

Interestingly, Wickham ([@wickham08]) attempted to reproduce this visualisation, with today's computational tools, namely the R library used here is ggplot. This may show limit of the computational tools, but also one may argue that Minard's map is not applicable to dataset of a bigger order of magnitude. Overall, it highlights that each visualisation is very specific to the case considered, its data and its aim. 
![Reproduction of Minard's Napoleon's March with ggplot [@wickham08]](../images/minard_ggplot_2.png)

![Another modern reproduction of Minard's Napoleon's March overlaying a map [@Tour]](../images/napoleon_1.png)###Comparing multiple versions of spatial data (runs)
 
####Comparing spatial categorical data (discrete attributes)
VERY GREAT REFERENCE : [@Kuhnert2005] 
#####Maps displays
Map comparison example TODO ?

Visual comparisons of maps is efficient and not too intense cognitively for human perception. However, it fails to rank quantitatively the results, nor is adapted to an important number of maps. Screening through hundreds of maps produced is not a viable option. Therefore, other solutions must be considered. 

#####Quantitative indices and spatial metric

######Between 2 maps
Different types of map consistency measures can be distinguished:
1. The coarsest approach would be to compare the total numbers of pixels assigned to each category, neglecting any spatial patterns. This gives a very general quantitative overview of the total per categories. (All the other, finer approaches detailed below imply a cell-by-cell comparison.)
1. A basic cell-by-cell comparison method measures simply the overall agreement, by calculating the portion of cells that agree between two maps:
(Cell-by-cell level of agreement) = (Number of direct matched cells between 2 maps) / (Total number of cells in map)

1. Kappa index of agreement (KIA or Cohen's KAPPA) is a statistic measuring concordance between categorical items. This technique has proven efficient for cell-by-cell comparisons of spatial data [@Manson2005], as long as patterns and locations of changes are not involved [@Kuhnert2005]. Some variants have been developped to adress the quantity and the location fit (points 2 and 3 below) as well [TODO? [@Hagen2003] and [@Pontius2000] ) It is more robust than a percent agreement because it takes into account the agreement occuring by chance. 
KAPPA = (p0 - pe)/(1 - pe) with p0 being the proportion of units agreeing, and pe the proportion of units expected to agree by chance (i.e the hypothetical probability of chance agreement). Complete agreeement results in KAPPA = 1. [@Cohen1960]. 
1. The quantity fit informs on the number of cells that changed from one category to another, offering an overall comparison on the quantity of each category: [todo @ Pontius2002 cf Kuhnert2005]
(Quantity fit) = 1 - 1/( (Total number of cells in map) * sum(all categories) abs(a1i - a2i) 
where aki is the number of cells assigned to category i, in map k. (k appartient 1,2) TODO FORMULA ! (see Kuhnert formula 2) 

1. The location fit informs on the number of cells that kept the category but changed location from one map to another:
(Location fit) = (Quantity fit) - (Cell-by-cell level of agreement)
1. The distance between the locations of matching cells in the maps can also be calculated [@Kuhnert2005] but is of less interest for the purpose of this work. (or is it ? BEN?). (...) An overall measure of distance between two discrete maps expresses the amount of agreement or the goodness of fit [@Seppelt2003217] and [@costanza]

1. The moving window algorithm further accounts for landscape patterns by considering neighboring cells in addition to the cell-to-cell comparison. It has been developp to anwer the following problem: computing solely the number of cell-to-cell matches is not performant in all circumstances, as if there is a matching cell right near by, it will not be taken into account (e.g if we compare two chessboards shifted by one well, the number of cell-to-cell matches is null although there is evident similarity not to be ignored) [@Kuhnert2005]. 

1. So-called landscape patterns metrics, such as the average patch perimeter-area ratio (PA-1), can also be used to describe the patterns for each category, and compared to quantify differences [@Ritters1995]. However, this metrics have not yet proven to be efficient, nor are widely used. 

"more comprehensive methods and measures for tracking land use changes and comparing maps under multiple resolutions (from coarse to fine)": TODO EXPLORE


######Between many maps
When comparing a large number of maps, it may be necessary to simplify, by using a coarser approach such as the total numbers of pixels assigned to each category (point 1 from previous section), or agreement measures (point 6 from previous section). These metrics can be used to calculate correlation between maps [@Seppelt2003217]
#####Maps displays (continuous or categorical??)
For the examination of (dis)agreement between runs, over space : Ensemble data sets are the results of multiple runs of a simulation, generated using multiple numerical models,  and input conditions and parameters varying within a given space [@PotterWilson]
Ensemble-Vis is a tool, designed to gain insight on distribution of spatio-temporal simulation results, as well as the associated uncertainty. It argues in favor of combining multiple linked displays [Potter, 2009]Spaghetti plots (img : spaghetti-plots-ensemble) [Potter, 2009]. The spaghetti plot is the isocontour of each run. If the runs agree (Fig. left), it will result in a coherent bundle. Slight disagrements induce divergence from the main bundle (Fig. right)

To compare and constrast alternative options, and explore the effects of trade-offs, 3D scatter plot and parallel coordinates plot are recommended by [@Hadka2015] 

####Comparing spatial continuous data


###Displaying uncertainty
####A note on uncertainty analysis and sensitivity analysis
It is often of interest to analyst to consider how input uncertainty and model structure affect the precision and robustness of findings. Because ecosystem services depends on unique landscape characteristics, each case is unique and different procedures can be specifically chosen to generate summaries of robustness and sensitivity. [

![Uncertainty analysis and sensitivity analysis [@lig14]](../images/UA_SA-lig14.png)
Hadka et al, MORDM An open source framework for many-objective robust decision makingThe OpenMORDM software framework enables decision makers to identify optimal policy-relevant scenarios/designs under well- characterized uncertainty, explore the trade-offs, dependencies, and vulnerabilities revealed under deep uncertainty, flexibly explore alternative definitions of robustness, and identify key system factors that should be monitored as triggers for future actions.+ visualization toolkit (R)

####Spatial summaries of robustnessNot only does uncertainty adds a dimension to the visualization, it is especially complex because it depends directly on the data itself, and also because uncertainty propagates (i.e if the data is transformed to be visualized, its underlying uncertainty propagates, not necessarly in a trivial way [@correa]). It can be presented in different ways : as a function of the data, (as a PDF, as a multi-value data), as bounded data...TODO: In the context of this study, the state-of-the art research will limit to 1D and 2D scalar data, leaving aside vector data and 3D (that are further explored by Brodlie [@Brodlie]). The most common static visualization techniques include :
* juxtaposition (adding a separate similar figure to represent uncertainty, alongside the representation of the data), * range representation? (representing the mean and then a range from the ...)* Spaghetti plots show possible flows but also allow examnation of variation of different variables of an ensemble over space. * overlaying a visualization of uncertainty on top of the main one. [@Bingham] overlay a contour map of an error field on top of a heatmap of the mean value of a multivalue dataset. Not so straightforward. * Varying the intensity/some properties ?/ of the color palet used to visualize the main data can also express uncertainty. The first option is to adapt focus proportionally to the level of uncertainty, i.e « blurring » the representation of imprecise data, this can be done through one of these parameters : contour crispness (« fuzzyness »), fill clarity, fod or resolution [@mac92] as suggested on fig. Formally, blurring is defined as removing spatial high frequency details [Russ, 1995] * Saturation is the second option, uncertainty is expressed by paleness (or whiteness) [@hengl]. These options are less precise but more intuitive.
* Circular glyphs and a ribbons have been designed, in the context of weather forecast ensemble data, to visualize uncertainty [@sanyal].
![uncertainty table draft TODO > SEE WORD DOC 2.litt](../images/uncertainty-table-draft.png)

In the specific context of portfolios 
>>Robustness approach #1: Modal portfolio and frequency
- modal portfolio : activity most chosen 
- Frequency map : how often chosen (>90%?) [@RIOS]
In dynamic visualization, uncertainty representation can be more easily achieved. A swap button can allow the user to visualize successively the main data and its associated uncertainty on the same background map, allowing easier interpretation, with the possibility of going back and forth. This method is referred to as toggling [@Aerts03]Other ways of expressing imprecision dynamically make use of time as an extra dimension,  via vibrations proportional to the level of uncertainty [@Brown], or smooth animation of sequence of different realizations of a model [@Ehlschlaeger].  There have even been attempts to display uncertainty by adding another dimension via sounds [Lodha, 1996 and Fisher, 1994]. Another solution to convey accuracy is probabilistic animation : the uncertain points appear and disapear according to their accuracy, i.e the probability domain is sampled over time [@Lundstrom].
TODO : 3D/other dim.... (explore BRODLIE)TODO : explore also *Bluriness :  Also Cartography, Third Edition: Visualization of Spatial Data Par Menno-Jan Kraak,Ferjan Ormeling

A word on deep uncertainty ? TODO

####Non-spatial summaries of robustness
>>Robustness approach #2: Breakeven prioritization scores
>>"how much things would need to change before a different decision is taken" [@RIOS]

 >>Two statistics are particularly useful: the mean that represents the central tendency of the stochastic process, and the variance that summarizes the variability of the results. Variance is then used as input to SA (UA is, therefore, a prerequisite to SA)[@lig14]
 

###Sensitivity Analysis displays

An essential part of sensitivity analysis is understanding the input parameter - output relationship. A common and direct way of expressing it is a scatterplot (with input parameter considered on x-axis and the scalar output on y-axis), the relationship is explicitly revealed, especially in the case of strctured dependencies. However, if the number of inputs to consider is high, scatterplots can become cumbersome. Pie charts displaying variance partitions are a good alternative, and do not require a scalar output. [@ABMleelig (see for examples)]

###Robustness displays, parametric uncertainty
**(relevant? (ASK BEN) should be merged w/ uncertainty?)**
Robustness measures fall in two categories : regret and satisficing measures. [@Hadka2015] >> robustness viz fig 5-6-7 [@Hadka2015] 
Lempert and Collins (2007), Herman et al. (2015) distinguish two major classes of robustness measures in the literature: regret and satisficing. Generally speaking, regret-based robustness seeks to minimize deviations in system performance caused by deep uncertainties compared to a preferred or ideal design (i.e., minimizing expected loss), whereas satisficing-based robustness seeks to maximize the SOWs where system requirements as defined by stakeholders are met>>
Display parametric( ?)Interactive/querying displaysEnsemble-vis [Potter, 2009]Combining###Things that I'm not so sure where they go####Agent-based Modeling 
Agent-based modeling (ABM), or indivisual-based modeling consist in representing phenomenas as dynamical systems of interacting agents, where an agent is a discrete and autonomous entity. Their individual behaviors are encoded, resulting in outputs describing the the agents' interactions that are used to describe complex systems. These systems can be a  variety of processes, phenomena, and situations in any field. [@ABM_intro] (Why ?

* *Complex systems Approaching Design Limits* large models with complex interactions and outputs
*  by conducting computer-based experiments)*

In the context of this work, ABM is of interest because of the high volume of multidimensional output data (induces by Monte Carlo sampling), the visualization and statistical analysis of these outputs can be applied
 
*  the study of variance in the model outputs (i.e., stability) 
*  
Processing ABM output data over time and space. 

Visualisation strategies [@ABMleelig]
 the role of effective visualization as a medium for both analysis and exposition of model dynamics
 
#### Displaying hierarchical data
 [@Tour]
 Node-Link Diagrams
 Adjacency Diagrams
 Enclosure  Diagrams

#### Displaying networks data

 [@Tour]
 Force-Directed Layout
 Arc Diagrams
 Matrix Views
#### Displaying statistical distributed data
[@Tour]
 Stem-and-Leaf Plots
 Q-Q Plots
 Scatter Plot Matrix (SPLOM)
 Parallel coordinates
 
 