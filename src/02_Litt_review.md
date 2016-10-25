# Design strategies for implementation of complex display
 [make subtitle?]
 *This chapter consists in a litterature review on static and dynamic approaches to displaying multidimensional and uncertain data. It aims to explore the design strategies to express and display multi-dimensional, spatial, multi-objective and uncertain data.*
 
 > "Excellence in statistical graphics consists of complex ideas communicated with clarity, precision and efficiency."
> 
> Edward Tufte

##About data visualization###Introduction
Information visualization, or visual communication, consists in transforming complex and abstract data into a accessible and concrete form, that a human brain can perceive with as little as possible cognitive processing. It consists simply in encoding data into visual objects, such as lines or points. 

In order to communicate fact-based information clearly and efficiently, one needs to use tools allowing to gain quick insight from the data. This is the purpose of information visualization. In other words, a clear visualization helps understand complex data. Moreover, in the case of high-dimensional outputs, sophisticated analytical approaches are required, and display tools supports these. 

Effective data visualization takes into account human perception and desicion making process, aesthitical considerations, statistical mathematical precision and more. It is an interdisciplinary work including (...) statistics, graphic design, visual art, perceptual psychology and cognitive science.
###Basics of data visualization 

####Modes of visualization
* Static presentationIn the context of this work : for final reports (QUESTION FOR BEN : should I already connect thoughts on results in the litterature review part of the report or not ? )* Dynamic user-interactive visualisations (...)
* Interactive storytelling

####Vocabulary
Plot :•	a default dataset and set of mappings (i.e visual encodings : from variable to aesthetics) •	layer(s) = geometric object + statistical transfo + position + dataset•	one scale for each aesthetic mapping used. Scaling actually occurs in three parts: transforming (if non linear scale) training (choose scale), and mapping.•	a coordinate system, •	the facet specification. Faceting (includes : conditioning, trellising, and latticing) = produces small multiples showing different subsets of the data.Dynamic features:-	Scaling-	Identification (also called pointing) (allows to access to detailed information of a subpart of the graph, by clicking on it)-	Generalized selection. Selects everything that is similar to the user’s selection, point to an example and define an abstraction based on one or more properties [Clark, Brennan]-	Brushing and linking. Brushing ocnsists in selecting a subset of data, that can then become highlighted. Linking is the dynamic update of the other graphs displayed, to higlight the corresponding  « brushed »selection. (have an example)
###Available tools
TODO###Graphical best practices and guidelines
#### What makes a good visualization ?
Keeping in mind the goal which is to gain insight on the data, an efficient visualisation limits the cognitive process of understanding the graph, in order to bring the observer's attention on the actual facts. Some may seem trivial, nevertheless the guidelines summarized in the following paragraphs are essential to achieving the visualisation's purpose. 

>« Graphical displays should:- show the data-	induce the viewer to think about the substance rather than about methodology, graphic design, the technology of graphic production or something else-	avoid distorting what the data has to say-	present many numbers in a small space-	make large data sets coherent-	encourage the eye to compare different pieces of data-	reveal the data at several levels of detail, from a broad overview to the fine structure-	serve a reasonably clear purpose: description, exploration, tabulation or decoration-	be closely integrated with the statistical and verbal descriptions of a data set. » 
>
> Edward Tufte, in *The Visual Display of Quantitative Information* [@tufte]

Best practices seem to be summarized by 3 points-	tailor to audience. -	self-explanatory graphics (storytelling can be used...). -	graphics « that communicate the key message » [CBO-Telling Visual Stories About Data-June 2014, https://www.cbo.gov/publication/45224] Good visualizations are task dependant, the organisation of the display is closely related to the phenomena considered, and crucial to understand in that perspective.

In terms of aesthetics and graphical choices, readibility should always be a priority. Some key rules needs to be considered : about color scheme (colorblind safe, intuitive hue(...) [Colorbrewer]), but also legend, and ordering (by some properties of data, never alphabetically: a space to express something about the data would be neglected)...##Specific data visualization challenges et strategies###Displaying multi-dimensional data
####Epic Example

This figurative map, drawn up by M. Minard in 1869, depicts the successive losses in men of the French amry in the Russian campaign of 1812-1813. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.*

It figures multi-variate data, including 6 dimensions that are the army size, its direction, its location in (x,y) coordinates, the dates and the temperature in the lower part of the display. *"The best statisctical graphic ever drawn"* according to Edward Tufte is an example of displaying complexity with clarity.

![Minard's Napoleon's March figurative map. The text translates to: *The numbers of men present are represented by the width of the colored zones at a rae of one millimeter for every ten thousand men; they are further written accros the zones. The red designates the men who enter into Russia, the black those who leave it. The information which has served to draw up the map has been extracted from the works of M. M. Thiers of Ségur, of Fezensac, of Chambray and the unpublished diary of Jacob, the pharmacst of the army since october 28th. In order to better judge with the eye the diminution of the army, I have assumed that the troops of Prince Jérôme and the Marshal Davoush who had been detached at Minsk and Mokilow and have rejoined around Orcha and Vitebsk had always marched with the army.* ](https://upload.wikimedia.org/wikipedia/commons/2/29/Minard.png)

Interestingly, Wickham ([@wickham08])  attempted to reproduce this visualisation, with today's computational tools, namely the R library used here is ggplot. This may show limit of the computational tools, but also one may argue that Minard's map is not applicable to dataset of a bigger order of magnitude. Overall, it highlights that each visualisation is very specific to the case considered, its data and its aim. 
![Reproduction of Minard's Napoleon's March with ggplot [@wickham08]](../images/minard-ggplot.png)

####Small Multiples

####Other ways ?
###Displaying mutiple inputs###Displaying multi-objective problems###Displaying spatial data###Displaying uncertainty###Parametric data? (not so sure what that means)