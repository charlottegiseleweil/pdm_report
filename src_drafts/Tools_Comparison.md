
A few important things to consider when chosen a tool are the features supported (user interactivity, 3D, web), and also speed, scalability, robustness, and user adoption. Then, it is often a trade-off between customizability and ease of use. The softwares are often easier to manipulate, and the results are esthetic, but if the user is willing to perform some programming, custom scripts offer the most flexibility in design, and various charting libraries allow to tailor the figure to specific needs. 

This section does not pretend to be exhaustive but attempts to give an overview of the available data visualization tools, as of 2016. Emphasis will be given on spatial data (GIS) as it is an essential part of natural capital informations.

![Overview of visualization tools](Figure : Make a visualization of data viz tools (ppt))

### Data analysis and visualization softwares
As the information age starts, data visualization softwares, usually combining with some analytics features, thrive. The main softwares for static graphs would be **Tableau**, **Spotfire** , **Qlickview** and **MS BI Stack**. Dynamic visualization are supported by softwares like **Xmdv Tool** and **OpenDX**, which are both open source. (TODO : more? )

In terms of maps, some of these softwares support spatial data (namely Tableau, Spotfire and OpenDX). Moreover, GIS softwares are designed to build maps from any data and to perform spatial data analysis. The two most used ones: **ArcGIS** and **QGIS**. The former integrates in its desktop version several applications, namley ArcMap to build maps, ArcCatalog for data management, ArcToolbox for geoprocessing, and also ArcScene, ArcGlobe, and ArcGIS Pro. QGIS (formerly Quantum GIS) is the corresponding open-source software. Although ArcGIS seems to have more functionalities and better support tools, and a QGIS a steeper learning curve, they are really comparable [Ref needed? But this is me summarizing lots of opinions:/]. To combine spatial data and dynamic displays, dome softwares such as **InstantAtlas** provide interactive mapping services. 

### Charting libraries
Charts and maps can also be coded, allowing greater flexibility. Sorted by programming languages, some of the main plotting and mapping libraries are listed in the section. On the spatial data side, these options are better than GIS softwares for exploratory data analysis [@python_libs]. 
c 
####Javascript
Javascript is, without a doubt, the go-to language for fancy - and definately for interactive - data visualization, considering the multiple charting libraries written in this language. The one that stands out is **D3.js** (or just D3 for Data-Driven Documents). Formerly Protovis, it produces dynamic, interactive and very customizable web visualizations. Processing, Anychart, FusionCharts, Dygraphs, Highchart, Zinchchart, Three (3D) can also be mentioned (TODO). Several tools build upon D3, the library **Dc.js** adds crossfiltering functionalities, such as brushing and linking,  Raw simplifies (TODO). Also **Plotly** API libraries that build on D3.js not only for javascript but also with versions for python, Matlab and R.

About spatial data, D3 supports only very simple maps and formats. **Leaflet** is probably the most adopted mapping library. **Mapbox** supports similar functionalities with the Mapbox GL library. Other mapping libraries include ModestMap (from the makers of Mapbox) and Highmaps.  (TODO : diff Mapbox/ModestMap?)

####R
R plotting packages **ggplot** and **ggplot2** are very efficient for static visualizations. The map package built on top of the latter, **ggmap** combines spatial information from GoogleMaps, OpenStreetMap with the grammar of graphics of ggplot2. [@ggmap] The interactive version of ggplot2 would be **ggvis**, however its dynamic  functionalities are quite limited. A powerful package for interactive (web) visualizations is **Shiny**. Also, as mentioned above, Plotly has an R version too, converting ggplot2 charts to interactive ones. Another way to connect to the multiple javascript charting libraries is to use the package rCharts.

####Python
**Matplotlib** is the main Python graphing library. It contains a toolkit for plotting 2D data on maps: **basemap**.  Also, **geopandas** extends the data analysis library Pandas to spatial data, using also Fiona for file access, Shapely and Descartes for geometric operations, PySal for spatial analysis, and of couse Matplotlib for plotting [@python_libs]. Interactive plots are based on **Bokeh** which imitates D3, or, as mentioned previously, Plotly. 


