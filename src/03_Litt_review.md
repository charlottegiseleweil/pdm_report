# Elements of data visualization {#sec:elements}

>
>   
> 
>*"Excellence in statistical graphics consists of complex ideas communicated with clarity, precision and efficiency."*
> 
> *Edward Tufte*
> 
> 

This chapter aims to lay out the context and basics of data visualization, to have the background knowledge to further investigate specific display strategies. First, a brief overview of some general notions in data visualization is given to familiarize with the context, along with guidelines for successful implementation. Finally, an overview of the multiple visualization tools supports choice of the most adapted software or library for each application.    

##Notions and techniques in data visualization 

###Information visualization and graphical integrity {#sec:graphintegrity}
Information visualization, or visual communication, consists in transforming complex and abstract data into an accessible and concrete form, that a human brain can perceive with as little as possible cognitive effort. It consists simply in encoding data into visual objects, such as lines or points [@tufte]. The goal of a visualization is to effectively convey information [@Kelleher].

In order to achieve this aim honestly, graphical integrity considerations must be kept in mind throughout the process of building visualizations. It has been shown that graphs can clearly be misleading because of design choices [@Allen1]. Graphical integrity consists in accurate representations of data, avoiding distortions or misleading designs. To this end, data must be shown in its context, well-known units and clear labeling should be used to avoid ambiguity, true proportions must be kept in representing numbers [@tufte]. In the context of ES, graphical integrity could be interpreted as showing uncertainties and all scenarios; hiding some may be considered dishonest [@McMahon2016]. These considerations apply especially in the choice of the scale: it is important to normalize it, and use the same scale on comparable figures, to avoid biasing comparisons.

###Vocabulary and grammar of graphics
Graphs, charts, diagrams and plots, despite ambiguous nuances, are all defined as representations of data, these words will be used synonymously in this work. A graph consists in at least one dataset translated into a set of mappings (i.e visual encodings), forming layers that are statistically transformed according to the scale, the coordinate system and the facet specification. Refer to @wickham08 for precisions about grammar of graphics. 

Spatial data is handled with specific tools, so called geographical information systems (GIS) which link geographic (e.g maps) and descriptive informations. Data is organized is different layers, associated based on their geography. Spatial data can be stored in two types: raster, which is a collection of pixels referenced with coordinates, and vector, which corresponds to a set of point, lines and polygons. Different projections and coordinate systems are of great importance when dealing with spatial data: the round shape of the earth different from the flat projections of the maps means that distortion cannot be avoided. These projections conserve either the shape, or the area for example but cannot conserve all measures [@LectureGIS]. 
###Modes of visualization
Required for printed format, **static presentations** are essential. Plus, in the context of inter-organizational projects, there is almost always a need to summarize results in static reports. 

**Dynamic user-interactive visualizations** gives the greatest flexibility to the user who is given options to test and visualize results while having some control on the display. In many cases, user interactivity enhances the user's implication and satisfaction [@Teo2003281]. Dynamic displays offers many options to tailored and multi-dimensional visualizations. Section \ref{sec:interactivefeatures} will detail some of the main features of interest.

**Dynamic storytelling** is the in-between between the two previous visualization modes, is is dynamic but not fully interactive. The viewer is guided through the visualization, either by a presenter, or step-by-step through the storyline, he therefore has less flexibility to "play around" with the variables, but it can result in easier delivery of main message.  Especially useful during presentations, but also on webpages, the dynamic storytelling allows the flexibility and multi-dimensional displays options of dynamic visualizations, while keeping control on the selected options, i.e walking the user through the visualization to lead to the envisioned goal. 

###Distortion techniques {#sec:disto}
When displaying large datasets, combining considerations about different scales can become very tricky. As noted earlier (\ref{sec:graphintegrity}), graphical integrity requires to present the context of the dataset. However, when attempting to show local variations, displaying two scales at once is a notable challenge. Some distortion techniques have been developed in order to view precisely local details in their global context. They allows a greater space to the display of a focused zone, while still embedding its surrounding context. Generally, linear or hyperbolic geometry supports the smooth connection of the focus area and the background, that have different scales [@Leung]. Distortion techniques include: 

-  **bifocal display** (or lens) corresponds simply to a linear transformation (in one or two directions) [@bifocal and @Leung].
-  **polyfocal lens** is similar to bifocal lens, but using a more complex hyperbolic (or polynomial) transformation function [@Leung].
-  **fisheye view**, originally called *Focus + Context* technique [@Lamping], [@Furnas_fisheye] uses a continuous magnification function (that also transforms the boundaries). Tough this term has been used with different definitions, it is broadly used and very intuitive.
- there are other options among which can be mentioned the **perspective wall** [@Mackinlay], that simulates the perspective effect or the **hyperbolic tree** that extends the fisheye view using hyperbolic plane mapped onto a circular display region [@Lamping]. 

*TODO: Example figure?*

###Interaction techniques {#sec:interactivefeatures}A few interactive features of interest include [@wilhelm1995software]:

-	**Scaling** which is simply zooming in and out but is powerful in the sense that it allows the user to both global view of the whole dataset and precise details on smaller fluctuations, therefore removing the need for a distorded view. Some scaling options also combine distortion techniques (see section \ref{sec:disto}) to both zoom in and keep the background context in the surroundings.-	**Identification** (also called pointing) allows access to detailed information of a subset of the graph by clicking on it.-	**Generalized selection** extracts every point that is similar to the user’s selection for an overview of subsets. The similarity rules are defined according to the case.-	**Brushing** consists in selecting a subset of data, that is then highlighted. Also, brushing can be used to remove unwanted data, when a specific threshold is required [@Kollat_Video]. Brushing can be done with a slider, or with direct selection on the plot [@xmdvtool].
-      In a context where the displays consists in several views (different plots), **linking** adds value to brushing, it is the dynamic update of the other graphs displayed, to undergo the corresponding «brushed» selection [@Buja].
##Graphical best practices and guidelines {#sec:colors}
What makes a good visualization? Keeping in mind the goal which is to effectively convey information, i.e to gain insight on the data, an efficient visualization reduces the cognitive effort of understanding the graph, in order to bring the observer's attention on the actual facts. Some may seem trivial, nevertheless the guidelines summarized in the following paragraphs are essential to achieving the intended purpose. As described by Tufte (1983) in his classic text, graphical displays should: "'*show the data, induce the viewer to think about the substance rather than about methodology, graphic design, the technology of graphic production or something else, avoid distorting what the data has to say, present many numbers in a small space, make large data sets coherent, encourage the eye to compare different pieces of data, reveal the data at several levels of detail, from a broad overview to the fine structure, serve a reasonably clear purpose: description, exploration, tabulation or decoration, be closely integrated with the statistical and verbal descriptions of a data set. »*. In the context of maps, @Buckley2012 states five major maps design principles, namely legibility, visual contrast (for which the choice of an appropriate colorscheme is essential) figure-ground organization, hierarchical organization, and balance (see [@Buckley2012] for further details and guidance specific to maps).

Best practices seem to be summarized by three main points. An efficient display should be self-explanatory, tailored to the audience and most importantly convey the key message. Moreover a good visualization is highly dependent on the task, the type of display and other design choices are very specific to the dataset considered.

### Legibility and intuitivity 
Simplicity is key to an effective display. Tufte advocates to minimize the design complexity, to maximize the content reasoning time. Redundancy complicates vainly and should be avoided. For example, the data ink ratio (i.e the ratio of ink used to display data over the total ink of the figure) should be minimized as far as possible [@tufte]. Additionally, [@Kelleher] argues to maintain axis ranges across subplots for easier comparison, connect sequential data (e.g disconnection for missing data in time series plots) and express density in overlapping points (e.g with color gradient in scatterplots). Moreover, appropriate encoding of objects and attributes lead to intuitive plots [@cleveland1984graphical].

### Scale and ratios 
The success of a visualization is contingent upon the careful selection of appropriate scales and aspect ratios. There is always trade-offs between showing the zero, or zooming on fluctuations. Dynamic features and distortion techniques allow to overcome some of this difficult choices, but are not always possible. Making the right choice between displaying patterns or details is crucial [@kosslyn1992minding]. Meaningful axis ranges, data transformations (e.g log scale) and aggregation level (e.g temporal aggregation by averaging over a larger time step for long time-series) are essential too [@Kelleher]

###Legend
For the graph to be self-explanatory, a clear labeling must be included. If opting for a legend, it should be ordered by some properties of data, never alphabetically because a space to express something about the data would be wasted [@tufte]. Creating logical groups assist the understanding. For color codes, it is advised to display adjacent to each other in the legend the colors that are adjacent in the corresponding map [@Desi5656].

###Colorscheme 
The careful choice of the color scheme is not be neglected [@Kelleher]. Sequential color scheme ought to be chosen when the underlying data shows ranked differences; diverging scheme when dealing with negative and positive differences around a mean or a neutral value; and a categorical scheme for discrete values (see figure \ref{fig:colorschemes} and recommendations of [the tilemill project](https://tilemill-project.github.io/tilemill/docs/guides/tips-for-color/). Moreover, many sources suggests to use only a few colors (about 6), while choosing them distinct, and striving for color harmony. Cultural conventions and intuitive tints facilitate fast perception. Colorblind and printing safe schemes are prudent. Also, the color scale should be normalized, considering which datapoints should appear in different categories. Websites like [Colorbrewer](http://colorbrewer2.org/), [Colrdl](http://colrd.com/palette/) or [Adobe Kuler](https://color.adobe.com) provide good color palettes, based on color theory.

\begin{figure}
\centering
\begin{subfigure}{.5\textwidth}
  \centering
  \includegraphics[width=.4\linewidth]{images/colorschemes/qual.png}
  \caption{qualitative}
  \label{fig:colorschemes_sub1}
\end{subfigure}%
\begin{subfigure}{.5\textwidth}
  \centering
  \includegraphics[width=.4\linewidth]{images/colorschemes/seq.png}
  \caption{sequential}
  \label{fig:colorschemes_sub2}
\end{subfigure}
\begin{subfigure}{.5\textwidth}
  \centering
  \includegraphics[width=.4\linewidth]{images/colorschemes/div.png}
  \caption{diverging}
  \label{fig:colorschemes_sub3}
\end{subfigure}
\caption{Colorschemes}
\label{fig:colorschemes}
\end{figure}

###Interactivity
The success of an interactive display results from the appropriate interface complexity for a certain user motivation [@Roth]. In the field of interactive maps, [@Roth] examines when cartographic interaction positively supports work.Interactivity is not always beneficial to the graphs, but relevant for users who wish to customize the communicated information to their particular interests, also relevant to overcome some display problematics. Another point that interactivity helps achieving is enhancing the user's involvment with the map, by offering a sense of control over the experience.

## Overview of visualization tools

Todo: http://geoawesomeness.com/top-19-online-geovisualization-tools-apis-libraries-beautiful-maps/
"geo-visualization platforms :Mapbox, Carto... Leaflet, Mapzen API (Mapzen is a cool mapping company working on some amazing visual projects. It offers some unique and open mapping tools for developers), Maps4news... 
In fact many of the top visualizations done in aforementioned platforms also use D3 elements"
http://preview.weather.gov/edd/

A few important things to consider when chosing a tool are the features supported (user interactivity, spatial data, 3D, web), and also the price, speed, scalability, robustness, customizability and user adoption. Then, it is often a trade-off between customizability and ease of use. The softwares are usually easier to manipulate, and the results are aesthetic, but if the user is willing to code, custom scripts offer the most flexibility in design, and various charting libraries allow to tailor the figure to specific needs. This section does not pretend to be exhaustive but attempts to give an overview of the available data visualization tools, as of 2016. Emphasis will be given on spatial data as it constitutes an essential part of natural capital informations.

![Overview of some existing visualization tools](../images/toolz.png){#fig:boooo}

### Data analysis and visualization softwares
As we enter the information age, data visualization softwares, usually combining some analytics features, thrive. Some of the main visualization software are **Tableau**, **Spotfire**, **Qlickview** and **MS BI Stack**. Dynamic visualization has historically been supported by softwares like **Xmdv Tool** and **OpenDX** (both open source) and is recently proposed by a myriad of new softwares, as visual data analytics is becoming very trendy.

In terms of maps, some of these softwares support spatial data (namely Tableau, Spotfire and OpenDX). Moreover, GIS softwares are designed to build maps from any data and to perform spatial data analysis. The two most used ones: **ArcGIS** and **QGIS**. The former integrates in its desktop version several applications, namely ArcMap to build maps, ArcCatalog for data management, ArcToolbox for geoprocessing, and also ArcScene, ArcGlobe, and ArcGIS Pro. QGIS (formerly Quantum GIS) is the corresponding open-source software. According to synthesis of users' forums, it seems that ArcGIS seems to have more functionalities, especially when dealing with rasters and better support tools, and QGIS a steeper learning curve. However, they are really comparable. To combine spatial data and dynamic displays, some softwares such as **InstantAtlas** provide interactive mapping services. [More details and examples of geovisualization tools are presented by](http://geoawesomeness.com/top-19-online-geovisualization-tools-apis-libraries-beautiful-maps/) @Buczkowski and include Carto, the Mapzen API, Maps4news and even the sotware Tableau mentioned above. 

### Charting libraries
Charts and maps can also be coded, allowing greater flexibility. Sorted by programming languages, some of the main plotting and mapping libraries are listed below. On the spatial data side, these options are better than GIS softwares for exploratory data analysis [@python_libs]. 

####Javascript
Javascript is, without a doubt, the go-to language for fancy - and definately for interactive - data visualization, considering the multiple charting libraries written in this language. The one that stands out is **D3.js** (or just D3 for Data-Driven Documents). Formerly Protovis, it produces dynamic, interactive and very customizable web visualizations. In the same vein, Processing, Anychart, FusionCharts, Dygraphs, Highchart, Zingchart, Three (3D)... Several tools build upon D3, the library **Dc.js** adds crossfiltering functionalities, such as brushing and linking,  Raw provides a user interface to build D3 typical examples without having to code [@raw_raw]. Also **Plotly** API libraries that build on D3.js not only for javascript but also with versions for python, Matlab and R.

About spatial data, **Leaflet** is probably the most adopted mapping library. **Mapbox** supports similar functionalities with the Mapbox GL library. Other mapping libraries include ModestMap (from the makers of Mapbox) and Highmaps.

####R
R plotting packages **ggplot** and **ggplot2** are very efficient for static visualizations. The map package built on top of the latter, **ggmap** combines spatial information from GoogleMaps, OpenStreetMap with the grammar of graphics of ggplot2 [@ggmap]. The interactive version of ggplot2 would be **ggvis**, however its dynamic  functionalities are quite limited. A powerful package for interactive (web) visualizations is **Shiny**. R spatial packages include **sp**, **raster**, **maptools** and **rasterVis** [^6782back]. Also, as mentioned above, Plotly has an R version too, converting ggplot2 charts to interactive ones. Another way to connect to the multiple javascript charting libraries is to use the package rCharts.

The OpenMORDM visualization toolkit [@Hadka2015] is a dynamic visualization platform built from R Shiny. It allows to explore, gain insight on the data, and make static plots, with a focus on deep uncertainty and robustness visualizations.

####Python
**Matplotlib** is the main Python graphing library. It contains a toolkit for plotting 2D data on maps: **basemap**[^6789back].  Also, **geopandas** extends the data analysis library Pandas to spatial data, using also Fiona for file access, Shapely and Descartes for geometric operations, PySal for spatial analysis, and of couse Matplotlib for plotting [@python_libs]. Interactive plots are based on **Bokeh** which imitates D3, or, as mentioned previously, Plotly. 

[^6789back]: Useful links to make maps using Python (matplotlib, basemap): \
- [A well written blogpost](http://sensitivecities.com/so-youd-like-to-make-a-map-using-python-EN.html#.WCJPDvkrJhE) \
- [and another one](http://www.datadependence.com/2016/06/creating-map-visualisations-in-python/) \
- [basemap examples](http://matplotlib.org/basemap/users/examples.html).
 
[^6782back]: Useful links about analysis of spatial data in R: \
- [overview of analysis of spatial data](https://cran.r-project.org/web/views/Spatial.html) \
- [Illustration of the ggmap package](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf) \
- [Introduction to the raster package](https://cran.r-project.org/web/packages/raster/vignettes/Raster.pdf) \
- [and to RasterVis, which builds on raster package](https://oscarperpinan.github.io/rastervis/)
