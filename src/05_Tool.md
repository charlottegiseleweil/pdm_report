# An innovative tool to display natural capital results {#sec:TheTool}

## Motivation and analysis of the need {#sec:survey_results}

While exploring the design strategies to display natural capital assessments results, in the previous chapter, several areas of improvements and gaps were brought to light. However, challenges and gaps alone do not equate to a priority. The survey (see section \ref{sec:survey}) was conducted to better understand what gaps above are considered important, as well as identify any other’s that may have been missed in the literature review.  

In the survey, ecosystem services analysts stated their own display strategies and needs. As detailed in \ref{sec:survey}, the respondents assessed for each listed display task: its usefulness in general, and the need for an improved implementation with a score from 0 to 5; 5 meaning very useful. The display tasks gathered appeared to be right on point as the average scores, in terms of general usefulness, were all higher than 3.5, 84% were higher than 4.0 and 47% higher than 4.5. These results confirms the relevance of these display tasks, all perceived as useful by the survey respondents.

### Survey results: quantitative prioritization of display needs {#sec:quantsurv}
Method (A): A rough assessment of the most important needs consists in selecting the needs that received **average scores strictly above 4, both in terms of general usefulness and need for implementation**. The selection results in 8 display needs, belonging to 5 of the 6 different categories. 

Method (B): Another approach is to define the most important needs as the ones which received **the most 5s in terms of need for implementation**, i.e. the display needs that are likely to meet demand, but only for a subset of the analysts population. Selecting the top 10% of the display needs, ranked by the number of 5s received results in 9 display needs, among which 7 overlapped with the previous selection. 

The 7 display needs selected through both the top average scores (A), and the maximum of top scores in term of implementation need (B) are considered to be the priority. The present tool aims to answers these display needs, namely: 

1. Compare many portfolios (both “pairwise” selecting pairs to look at, and also summarizing multiple)
2. Understand similarity and differences between many pixel-based maps
3. Location of synergies of intervention/scenario on multiple ES metrics
4. Location of tradeoffs of intervention/scenario on multiple ES metrics
5. Understand trade-offs and synergies between > 3 objectives under small number of scenarios
6. Characterize uncertainty in spatial model output - derived from multiple runs
7. Show/quantify beneficiaries impact by subgroups

### Survey results: qualitative analysis of comments and interviews 
Additionally to the scores, respondents were allowed to provide comments, and interviews were conducted on specific use cases, which resulted in important information.

The interest in an interactive tool was repeatedly expressed, allowing to display and compare portfolios, objective score maps, and also to compare how results change upon adjusting the relative importance of different ES objectives.

>  *"Static maps often do not suit communication needs, and I could really use a ready way to build interactive maps."* 
>
>  *“With synergies and tradeoffs it would be amazing to be able to dynamically adjust the weights of ES metrics so that decision makers can visualize the effect of marginal changes in their (or their constituents) values”* 
> 
>   About objective score maps: *“we are finding better uptake through use of interactive, user-friendly interfaces”* 

Several opportunities for improvements were highlighted with respect to considering uncertainty and beneficiaries. Although it was noted that the demand for detailed information about uncertainty rarely arises from the stakeholders, several respondents suggested it was important to create and meet this demand, as they considered important and interesting to display the results' underlying uncertainty.

### Summary of the need: design question
These results lead to following design question, that the suggested visualization tool aims to begin addressing. 

> ***How can we compare many scenarios (via their portfolios and other relevant maps), identify the locations of synergies or trade-offs between several ES objective, and have an indication of the effect of uncertainty?***


## Design

###Goal
The tool aims to allow visualization of tradeoffs between objectives, comparison of scenarios and assessment of uncertainty in an interactive dashboard with multiple linked views where users could select one or a subset of solutions and all plots would update dynamically to match selection. 

In between communication and exploratory purposes, this tool aims to be first introduced by the analyst who has generated the results. Then, the audience such as stakeholders, once familiarized with the functioning of the tool, can further explore the dataset, referring to the onIine tool. It is not fully self-explanatory, but the interpretation is supported by multiple help buttons providing information on the data structure. More complex or simpler versions could be tailored to facilitate analyst exploration and un-guided stakeholder use, respectively.

### Use case
The proposed tool takes the form of a dashboard, combining multiple linked plots (see \ref{sec:multiplelinked}) which allow to explore interactively the results. Design choices were made through an iterative process and are based on the knowledge of chapters \ref{sec:elements} and \ref{sec:UserGuide}. The design of the tool has been refined, specifically for the Upper Tana Water Fund use case, described in \ref{sec:tanacase}. The goal here is to optimize which landscape and farmer extension interventions to undertake in the Upper Tana basin, in order to improve water quality, quantity, and farmer livelihoods in the region -- which also serves as an important water supply and power generation area for Nairobi. 
Possible interventions are road mitigation, agroforestry, riparian management, terracing, reforestation, grass strips. For the purposes of the tool demonstration, three ES objectives are considered:

* Annual water yield (AWY) to be maximized, as it serves water supply and hydropower needs
* Sediment export to streams (SDE) to be minimized, as it harms reservoir and water treatment operations, among others
* Soil erosion (SDL) to be minimized, as it reduces agricultural productivity.

Many scenarios (possible futures) were considered, varying objective weights and input parameters' values. The models were run for each scenarios, leading to the generation of different portfolios (intervention maps). The 810 portfolios arise from uncertain or scenario-based input variables (4 parameters with 2 to 4 possible values each) and 15 combinations of objectives weights (details on portfolio generation below). [*Additional information and background on the Upper-Tana Nairobi Water Fund can be found in the introductory page of the visualization web application*](https://charlottegiseleweil.github.io/webviz_natcap/intro.html)

Out of the needs identified this tool would tackle the needs stated in section \ref{sec:quantsurv}, with the exception of the one about displaying beneficiaries impact, this use case not having data on the matter.

### Tour of the dashboard and main features

The web application can be found online at: **[https://charlottegiseleweil.github.io/webviz_natcap](https://charlottegiseleweil.github.io/webviz_natcap/)**

![Screenshot of the web application in its initial configuration [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/full.png){#fig:webapp_full}

Dynamic visualization helps a user build insight into the relationship between model inputs and outputs, by exploring how results change and how spatial aspects are connected to overall performance. Visualization where the information is presented in multiple ways simultaneously, while being linked, and updatable, can help a user see the whole picture while also focusing on particular cases. 

The dashboard consists of multiple linked views of the dataset, which consists of objective scores for each portfolio, linked to the objective weights and input parameters that define that portfolio, as well as the related maps (described below). Brushing and linking options (defined in \ref{sec:interactivefeatures}) allow to connect the different plots: upon selection of a subset of solutions in any of the views, all the others update automatically to display results of this selection. All the plots and statistics update instantaneously on-the-fly. Only the map requires a certain rendering time, expressed by a loading indicator. The visualization includes five main elements detailed hereafter.

#### Parallel coordinates plot {.unnumbered}

![Screenshot of the parallel coordinates plot from the web application [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/parcoords.png){#fig:webapp_parcoords width=60%}

Parallel coordinates plot displays the tradeoffs between the ES objectives (vertical axis), for each scenario (represented as lines).  The values plotted correspond to the overall aggregated objective score for the scenario considered (i.e. the sum of all pixel scores for this objective, across the raster). Features include:

* Select a subset of solution: by brushing on any axis
* Flip axis direction: upon double clicking on their name.
* Re-order axis: by dragging them. 

#### Sliders {.unnumbered}

![Screenshot of the web application with a specific selection [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/subset.png){#fig:webapp_subset}

Sliders control the parameters corresponding to the different scenarios generated. The varying parameters are (1) relative objective weights and (2) model input parameters subject to uncertainty. Varying these parameters led to the generation of the scenarios: the models and optimizer were run with different combinations of objective weights and input parameters values.

(1) The objective weights corresponds to the importance given to each ES objective, in each run, they sum to 100% In this case, 15 combinations of objective weights were considered[^710back].

[^710back]: Examples: a run where each objective is given equal importance:  *AWY_weigth = SDE_weight = SDL_weight = 33%*.
 A run where one cares mostly about AWY and slightly about SDE: *AWY_weight = 75%, SDE_weight = 25%, SDL_weight = 0%*.
 
(2) Several model input parameters are subject to uncertainty. To account for this, the model is run for several possible values of each uncertain parameter. In this case, the uncertain model input parameters are:
- the seasonality factor, Z is an empirical constant used to calculate the AWY in the [InVEST annual water yield model](http://data.naturalcapitalproject.org/nightly-build/invest-users-guide/html/reservoirhydropowerproduction.html#summary). It captures the local precipitation pattern and additional hydrogeological characteristics. No unit.
- the soil erodibility value, K is used to calculate the amount of annual soil loss in the [sediment retention InVEST model](http://data.naturalcapitalproject.org/nightly-build/invest-users-guide/html/sdr.html#summary). It measures the susceptibility of soil particles to detach and transport by rainfall and runoff. Unit is $ton*ha*hr/(MJ*ha*mm)$.
- A binary parameter, referred to as *spatial*, in this case representing an alternative *biophysical table.* Terrestrial InVEST models generally require a “biophysical table” that maps values for various parameters to each land cover class. This toggle switches between between the default biophysical table constructed for Tana, and one with alternate parameter settings. It can be thought of more generally as an example of a binary input variable that can be explored dynamically. For example, in another case, it could toggle between incorporation of climate change impacts.
- The budget level: this is not itself an uncertain parameter but rather a choice in the optimization. Currently three levels chosen for illustrative purposes (12.5, 25 and 37.5 M USD, presented in Kenyan Shillings at an exchange rate of 50 KSh:USD)[^8back]

[^8back]: Note, these budget levels are significantly larger than current anticipated spending within the Maragua watershed, designed to be more illuminating of the tool’s capabilities.


#### Scatterplots {.unnumbered}

![Screenshot of a scatterplot from the web application [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/scatterplot.png){#fig:webapp_scatterplot width=28%}

Tradeoff curves display the tradeoffs between each pair of ES objectives. Each plotted point corresponds to a scenario. 

The color scale provides additional information about which value of some uncertain input parameters were used: the orange (respectively blue) points correspond to scenarios generated under the spatial scenario A (respectively B). The color gradient gives an indication of the budget level (a lighter color is a smaller budget). Moreover, lines can be plotted, connecting the dots generated under the same combination of input parameters. These can be viewed as a *trade-off frontiers*.

#### Dataset table {.unnumbered}

The full dataset table can be viewed. It is also linked to the other views: the dataset shrinks to match the selection when a subset of scenarios is chosen (upon brush on the parallel coordinates plot, or a slide over a subrange of the sliders, for example). 

Upon clicking a specific row, this solution is highlighted in all plots (corresponding point in scatterplots, and line in parallel coordinates plot) and the maps corresponding to this portfolio are displayed. Moreover, a pie chart showing the composition of the portfolio appears.

#### Maps {.unnumbered}
Maps provide an essential view of spatial results. The maps can be calculated from 3 distinct selection cases: 

* for all portfolios (e.g. figure \ref{fig:webapp_full}): these map show results summarizing all scenarios, they are displayed initially when no selection had occurred.
* for a subset of portfolios (e.g. figure \ref{fig:webapp_subset}): these map show results summarizing the scenarios selected through the other views. This situation occurs when the button *Calculate map for selection* is clicked. 
* for a single portfolio (e.g. figure \ref{fig:webapp_singlesol}): these maps displays the results corresponding to a specific solution; this occurs upon clicking on the corresponding scenario row in the data table. A pie chart displaying the composition of the considered portfolio appears.

![Screenshot of the web application, upon clicking on a specific scenario [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/singlesol.png){#fig:webapp_singlesol}

In total 6 types of maps can be displayed:

* Current land cover map shows the context. Any categorical map (such as a portfolio) may be overlayed on top.
* Portfolio maps display the modal portfolio (for each pixel, the most frequently selected intervention across portfolios selected, see \ref{sec:comp_map_many}). For the case of a single portfolio display, it simply shows the corresponding portfolio. 
* Footprint maps show everywhere in the landscape a pixel was ever selected in any of the portfolios under selection. This maps show the pixels that were ever selected in any portfolios. This allows the user to see what areas to focus on for assessing nuances of differences between scenarios, and also to assess with confidence what parts of the landscape do not need to be considered for treatment. For the case of a single scenario display, it is just the overall footprint of its portfolio.
* Agreement maps display, at the pixel level, the frequency with which the intervention in the modal portfolio was chosen, which expresses consistency between runs (see \ref{sec:comp_map_many}). It is not relevant for the case of a single scenario display.
* Absolute objective score maps, for each ES objective, display the local objective scores averaged over the selected scenarios.
* Marginal objective score maps corresponds to the change in objective score between the current situation and the portfolio considered. Therefore they are calculated as the difference between the absolute objective score map of the portfolio, and the absolute objective score map of the baseline (current situation).

![Screenshot of the web application displaying the footprint map [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/footprint.png){#fig:webapp_footprint width=80%}

![Screenshot of the web application displaying the percent agreement map [*(View it online)*](https://charlottegiseleweil.github.io/webviz_natcap/)](../images/webapp/percent.png){#fig:webapp_percent width=80%}

Map control buttons allow to pick the map to be displayed among the 10 possible (the two latter exist for each of the 3 objectives). The legend, as well as corresponding map summary statistics are computed and update automatically. The map window is enhanced with zooming and panning abilities. Furthermore, the user experience with the map is enhanced by the apparition of the land cover category name upon hover on pixels.

In addition, more maps than the ones generated in the dataset can be displayed. The tool actually calculates agreement and summary maps for any subset chosen by the user. The ability to compute rasters almost on-the-fly (in the order of magnitude of seconds to a couple minutes) is the most innovative feature of the tool. Because it is not instantaneous though, a specific button *Calculate map for selection* allows the user to launch the calculation when appropriate. Upon clicking, a window prompt with an estimate of the calculation time, allowing the user to confirm or cancel.

##Implementation

###Tools and technology
To support interactivity and facilitate diffusion, the form of a web application was chosen. The powerful data visualization library [D3.js](https://d3js.org/) was used, along with other javascript libraries including [Dc.js](https://dc-js.github.io/dc.js/) allowing the crossfiltering features i.e. to connect the data between the different views to support brushing and linking, and [Geotiffs.js](https://www.npmjs.com/package/geotiff) to read the rasters. 

The input dataset was generated by B. Bryant using InVEST and R, details can be found in the appendix.

Data cleaning and pre-treatment for the specific purpose of the visualization were done in Python, primarily utilizing the Pandas library. Web development was conducted in Html, Javascript and CSS. The online page is powered by the github pages server. Data engineering considerations will have to be tackled in the long term, including most likely hosting the data on an external server.

### Raster on-the-fly computation challenge
One of the major innovations of this tool is to support on-the-fly computation of new maps, so that the user can compute summary maps for a specific selection. In the examples inspiring the development of this tool, this feature had not been found. For example @Peter pre-loads all maps so that no calculations on the server are needed; compared to his tool, this one also scales up, the amount of loaded maps being an order of magnitude 2 times bigger (from tens to thousands). 

Currently, raster on the fly computation has been tested and works well for a small number of maps. It is implemented only for the portfolios but could easily be extended to the other types of maps. The computational speed depends on the number of maps selected, rough orders of magnitude appears to be (for a maps of size of about 150Ko):

* <10 maps: instantaneous
* dozens of maps: <1min
* hundreds maps: few minutes

Computation capacities could be improved via the use of webworkers, allowing parallel execution of calculations, or webGL. However, this topic is beyond the scope of the present work.


##Results: prototype, testing, iterations and feedback {#sec:fidback}

[*As a reminder, the prototype can be found online: https://charlottegiseleweil.github.io/webviz_natcap/*](https://charlottegiseleweil.github.io/webviz_natcap/)

Dataset specifications and additional features were considered throughout the process. Several version of design documents and templates led to the current proposed one. Different iterations of the prototype were presented to audiences engaging with ecosystem services work to gather feedback. 

Feedback on a first version noted the importance of putting the graphical information in context, leading to the enrichment of the help buttons with detailed explanations on both the concept and features. Additionally, an introductory page presenting the project in its broader context and the workflow leading to the presented results was added. It displays the three watersheds involved in the Tana Water Fund project and offers an overview of its objectives.

Feedback repeatedly noted the **engaging** aspect of this tool, underlining the enthusiasm stemming from the interactive features. It was suggested that such as tool would improve the stakeholder's engagement and interest in the project.

Overall, the feedback was very positive, the tool was qualified to be "a great step forward", "immediately useful" and led suggestions and most frequently to request for generic capabilities, adaptable to any dataset similarly formatted.

The needs previously identified appear to be fulfilled by the conceived design. Visualization of tradeoffs between objectives is facilitated with the parallel coordinate plots and the trade-off frontiers in the scatterplots. Comparison of portfolios is allowed by the different maps displaying upon user's choice: the portfolios themselves, the modal portfolio of selected subset, the footprint or the agreement. Assessment of uncertainty in the input parameters can be explored with the sliders, allowing to view results for specific parameters values. The overall interactive dashboard with multiple dynamic linked views helps global understanding and engages users, by giving them great flexibility. The goal of the prototype seems achieved, as it led to calls for further development of a generic tool along the same lines.

##Next steps {#sec:nextstepswebapp}

### Additional features {.unnumbered}

* *Calculate map for selection* raster computation for all map cases
* Interactive legend, allowing user to choose color scheme and legend range
* Objective score maps, not only for each ES objective, but also for their weighted combination
* Additional map features (besides zooming: add overlay rivers, protected areas etc...)
* Ability to download the maps built from a selected subset, as rasters 
* Categorical input selections (instead of sliders for categorical input parameters)

### Design improvements {.unnumbered}

* Color coding of objectives names to facilitate understanding
* Allow to choose the opacity of overlayed maps

### Scaling up {.unnumbered}

* Server architecture: host the data on a separate server (data engineering considerations)
* Raster on-the-fly computation solution (e.g. webworkers)
* Integration in the NatCap's tools workflow (e.g MESH)

### Building a generic tool {.unnumbered}

* Tailored versions for the 4 watersheds in the Tana basin and explanation page
* Automatic inclusion of columns names from dataset
* Overall adaptation of the tool to allow any similarly formatted dataset as input

