# An innovative tool to display natural capital results {#sec:TheTool}

*Chapter 5 still draft to do !*

## Motivation and analysis of the need {#sec:survey_results}

While exploring the design strategies to display natural capital assessments results, in the previous chapter, several areas of improvements and gaps were brought to light. Ecosystem services analysts also stated their display strategies needs in the context of the conducted survey. As detailed in \ref{sec:survey}, the respondents assessed for each listed display task: its usefulness in general, and the need for an improved implementation with a score from 0 to 5; 5 meaning very useful.

### Survey results: quantitative prioritization of display needs 
Method (A): A rough assessment of the most important needs consists in selecting the needs that received **average scores strictly above 4, both in terms of general usefulness and need for implementation**. The selection results in 8 display needs, belonging to 5 of the 6 different categories. 

Method (B): Another approach is to define the most important needs as the ones which received **the most 5s in terms of need for implementation**, i.e the display needs for which many analysts really need a new solution. Selecting the top 10% of the display needs, ranked by the number of 5s received results in 9 display needs, among which 7 overlapped with the previous selection. 

The 7 display needs selected through both the top average scores (A), and the maximum of top scores in term of implementation need (B) are considered to be the priority. The present tool aims to answers these display needs, namely: 

1. Compare many portfolios [both “pairwise” selecting pairs to look at, and also summarizing multiple]
2. Understand similarity and differences between many pixel-based maps
3. Location of synergies of intervention/scenario on multiple ES metrics
4. Location of tradeoffs of intervention/scenario on multiple ES metrics
5. Understand trade-offs and synergies between > 3 objectives under small number of scenarios
6. Characterize uncertainty in spatial model output - derived from multiple runs
7. Show/quantify beneficiaries impact by subgroups

### Survey results: Qualitative analysis of comments and interviews 
Additionally to the scores, respondents were allowed to provide comments, and interviews were conducted on specific use cases, which resulted in important information.
\


The interest in an interactive tool was repeatedly expressed, allowing to display and compare portfolios, objective score maps, and also to compare results upon update of ES metrics weights.

>  *"Static maps often do not suit communication needs, and I could really use a ready way to build interactive maps."* Rob
>
>  *“With synergies and tradeoffs it would be amazing to be able to dynamically adjust the weights of ES metrics so that decision makers can visualize the effect of marginal changes in their (or their constituents) values”* Ryan
> 
>   About objective score maps: *“we are finding better uptake through use of interactive, user-friendly interfaces”* Eric

Several opportunities for improvements were underlined in the topics of uncertainty and beneficiaries. Although it was noted that the demand for detailed information about uncertainty rarely arises from the stakeholders, several respondents suggested to create this demand, as they considered important and interesting to display the results' underlying uncertainty.

### Summary of the need: design question
These results lead to following design question, that the suggested tool aims to begin adressing. 
***How can we compare many scenarios (via their portfolios and other relevant maps), identify the locations of synergies or trade-offs between several ES objective, and have an indication of the effect of uncertainty?***


## Design

###Goal
The web application allows visualization of tradeoffs between objectives, comparison of scenarios and assessment of uncertainty in an interactive dashboard with multiple linked views. Users can select one or a subset of solutions and all plots will update dynamically to match selection.

In between communication and exploratory purposes, this tool aims to be first introduced by the analyst who has generated the results. Then, the audience such as stakeholders, once familiarized with the functionning of the tool, can further explore the dataset, refering to the onIine tool. It is not fully self-explanatory, but the interpretation is supported by multiple help buttons providing information on the data structure. 

### Use case and design process
The proposed tool takes the form of a dashboard, combining multiple linked plots (see \ref{sec:multiplelinked}) which allow to explore interactively the results. Design choices are based on the knowledge of chapters \ref{sec:elements} and \ref{sec:UserGuide}. The design of the tool has been refined, specifically for the Upper Tana Waterfund use case, described in \ref{sec:tanacase}. The goal here is to optimize which interventions to undertake in the Upper Tana basin, in order to improve water quality and quantity supplying Nairobi. Three ES objectives are being acted upon:
* maximize annual water yield (AWY), * minimize sediment reaching streams (SDE)* minimize soil loss for agricultural productivity (SDL)

About 800 scenarios were generated, arising from parametric uncertainty (4 parameters with 2 to 4 possible values) and 15 combinations of objectives weights.

The design process is iterative. Dataset specifications and additional features were considered throughout the process. Several version of design documents and templates led to the current proposed one.

### Tour of the dashboard and main features

*A screenshot of the web app needed here? (todo)*\
\
**[Link to the tool prototype online](https://charlottegiseleweil.github.io/webviz_natcap/)**


The dashboard consists of mutiple linked views of the dataset. Brushing and linking options (defined in \ref{sec:interactivefeatures}) allow to connect the different plots: upon selection of a subset of solutions in any of the views, all the others update automatically to display results of this selection. The visualization includes five main elements:

#### Parallel coordinates plot {.unnumbered}
Parallel coordinates plot displays the tradeoffs between the ES objectives (vertical axis), for each scenario (represented as lines).  The values plotted correspond to the overall aggregated objective score, for the scenario considered (i.e the sum of all pixels’ scores for this objective, across the raster). Features include:
* Select a subset of solution : by brushing on any axis* Flip axis direction: upon double clicking on their name.* Re-order axis: by dragging them. 

#### Sliders {.unnumbered}
Sliders control the parameters corresponding to the different scenarios generated. The varying parameters are (1) relative objective weights and (2) model input parameters subject to uncertainty. Varying these parameters led to the generation of the scenarios: the models were runned with different combinations of objective weights and parametric uncertainty values.

(1) The objective weights corresponds to the importance given to each ES objective, in each run, they sum to 100% In this case, 15 combinations of objective weights were considered[^710back].

[^710back]: Examples: a run where each objective is given equal importance :  *AWY_weigth = SDE_weight = SDL_weight = 33%*.
 A run where one cares mostly about AWY and slightly about SDE: *AWY_weight = 75%, SDE_weight = 25%, SDL_weight = 0%*.
 
(2) Several model input parameters are subject to uncertainty. To account for this, the model is run for several possible values of each uncertain parameter. In this case, the uncertain model input parameters are :
- the seasonality factor, Z is an empirical constant used to calculate the AWY in the [InVEST annual water yield model](http://data.naturalcapitalproject.org/nightly-build/invest-users-guide/html/reservoirhydropowerproduction.html#summary). It captures the local precipitation pattern and additional hydrogeological characteristics. No unit.
- the soil erodibility value, K is used to calculate the amount of annual soil loss in the [sediment retention InVEST model](http://data.naturalcapitalproject.org/nightly-build/invest-users-guide/html/sdr.html#summary). It measures the susceptibility of soil particles to detach and transport by rainfall and runoff. Unit is $ton*ha*hr/(MJ*ha*mm)$.
- A binary spatial parameter, relative to the chosen biophysical table. Terrestrial InVEST models generally require a “biophysical table” that maps values for various parameters to each land cover class. This toggle switches between between the default “biophysical table” constructed for Tana, and one with alternate parameter settings. It can be thought of more generally as an example of a binary input variable that can be explored dynamically. For example, in another case, it could toggle between incorporation of climate change impacts.
- The budget level: this is not itself an uncertain parameter but rather a choice in the optimization. Currently three levels chosen for illustrative purposes (12.5, 25 and 37.5 M USD, presented in Kenyan Shillings at an exchange rate of 50 KSh:USD)


#### Scatterplots {.unnumbered}
Tradeoff curves display the tradeoffs between each pair of ES objectives. Each plotted point corresponds to a scenario. 

The colorscale provides additional information about which value of some uncertain input parameters were used: the orange (respectively blue) points correspond to scenarios generated under the spatial scenario A (respectively B). The color gradient gives an indication of the budget level (a lighter color is a smaller budget). Moreover, lines can be plotted, conecting the dots generated under the same combination of uncertain input parameters values.

#### Dataset table {.unnumbered}
The full dataset table can be viewed. It is also linked to the other views: the dataset shrinks to match the selection when a subset of scenarios is chosen (upon brush on the parallel coordinates plot, or a slide over a sub-range of the sliders for example). Upon click on a specific row, this solution is highlighted in all plots (corresponding point in scatterplots, and line in parallel coordinates plot) and the maps corresponding to this scenario are displayed.

#### Maps {.unnumbered}
Maps provide an essential view of spatial results. The maps can be calculated from 3 distinct selection cases : 

* for all scenarios: these map show results summarizing all scenarios, they are displayed initially when no selection had occurred.
* for a subset of scenarios: these map show results summarizing the scenarios selected through the other views. This situation occurs when the button *Calculate map for selection* is clicked.
* for a single scenario: these maps displays the results corresponding to a specific solution; this occurs upon clicking on the corresponding scenario row in the data table.

In total 6 types of maps can be displayed :

* Current land cover map shows the context. Any categorical map (such as a portfolio) may be overlayed on top.
* Portfolio maps display the modal portfolio (for each pixel, the most frequently selected intervention across scenarios selected, see \ref{sec:comp_map_many}). For the case of a single scenario display, it shows the corresponding portfolio.
* Footprint maps show the areas selected consistenly for interventions, across several scenario. For the case of a single scenario display, it is just the overall footprint of its portfolio.
* Agreement maps displays the frequency map of the modal portfolio, expressing consistency between runs (see \ref{sec:comp_map_many}). It is not relevant for the case of a single scenario display.
* Absolute objective score maps, for each ES objective, display the local objective scores averaged (*averaged or summed bpb?*) over the selected scenarios.
* Marginal objective score maps corresponds to the change in objective score between the current situation and the scenario considered. Therefore they are calculated as the difference between the absolute objective score map of the scenario, and the absolute objective score map of the baseline (current situation).

Map control buttons allow to pick the map to be displayed among the 10 possible (the two latter exist for each of the 3 objectives). The legend, as well as corresponding map summary statistics are computed and update automatically. The map window is enhanced with zooming abilities.

##Implementation

###Tools and technology
To support interactivity and facilitate diffusion, the form of a web application was chosen. The powerful data visualization library [D3.js](https://d3js.org/) was used, along with other javascript libraries including [Dc.js](https://dc-js.github.io/dc.js/) allowing the crossfiltering features i.e. to connect the data between the different views to support brushing and linking, and [Geotiffs.js](https://www.npmjs.com/package/geotiff) to read the rasters. 

The input dataset was generated by B. Bryant using InVEST and R *(some details on wokflow bpb?)*.

Data cleaning and pre-treatment for the specific purpose of the visualization were done in Python, using Pandas library mostly. Webdeveloppment was conducted in Html, Javascript and CSS. The online page is powered by the github pages server. (*bpb: remove, obvious?*)

####Raster on-the-fly computation challenge {.unnumbered}
One of the major innovations of this tool is to support maps on-the-fly computation, so that the user can compute summary maps for a specific selection. In the examples inspiring the development of this tool, this feature had not been found. For example @Peter pre-loads all maps so that no calculations on the server are needed; compared to his tool, this one also scales up, the amount of loaded maps being an order of magnitude 2 times bigger (from tens to thousands). 

Currently, raster on the fly computation has been tested and works well for a small number of maps. The computational speed depends on the number of maps selected, rough orders of magnitude appears to be (for a maps of size of about 150Ko):

* <10 maps: instantaneous
* dozens of maps: <1min
* hundreds maps: few minutes

Computation capacities could be improved via the use of webworkers, allowing parallel execution of calculations, or webGL. However, this topic is beyond the scope of the present work.

### Workflow
*needed?*

##Results: prototype, testing, iterations and feedback {#sec:fidback}
[The prototype can be found online: https://charlottegiseleweil.github.io/webviz_natcap/](https://charlottegiseleweil.github.io/webviz_natcap/)

Several iterations of the prototype where presented to audiences engaging with ecosystem services work to gather feedback.

Feedback on a first version noted the important of putting in context, leading to the enrichment of the help buttons with detailed explanations on both the concept and features. Aditionnally, and introductory page presenting the project in its broader context and the workflow leading to the presented results was added. It displays the 3 watersheds involved in the Tana Waterfund projects and offers an overview.

Feedbacks recurringly noted the **engaging** aspect of this tool, underlining the enthusiasm steming from the interactive features. It was suggested that such as tool would improve the stakeholder's engagement and interest in the project.


*Todo* Waiting on (fwat) results *
Aditionnally, a brief survey was conducted on sample users testing the tool. Four questions were asked:

* Do you think this type of tool is useful in general ?
* Would you use (an improved version of) this tool ?
* What would you change in the design concept ?
* What do you think is its major asset ? its main area of improvement ?



##Next steps {#sec:nextstepswebapp}

###Features in alpha version remaining to be implemented

* Summary statistics for all map cases
* Tailored legend for all map cases
* *Calculate map for selection* raster computation for all map cases

### Additonal features

* Chart (pie chart or bar chart) summarizing composition of portfolios
* Interactive legend, allowing user to choose colorscheme and legend range
* Objective score maps, not only for each ES objective, but also for their weighted combination
* Additional map features (besides zooming: add overlay rivers, protected areas etc...)

### Design improvements

* Colorcoding of objectives names to facilitate understanding
* Allow to choose the opacity of overlayed maps

### Scaling up

* Server architecture: host the data on a separate server (data engineering considerations)
* Raster on-the-fly computation solution (e.g webworkers)

### Building a generic tool

* Tailored versions for the 4 watersheds in the Tana basin and explanation page
* Automatic inclusion of columns names from dataset
* Overall adaptation of the tool to allow any similarly formatted dataset as input