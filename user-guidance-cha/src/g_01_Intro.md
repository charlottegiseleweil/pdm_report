
\
\
\
\
\

*This document aims to support ES analysts striving to effectively communicate natural capital information. It proposes approaches to ES visualizations and summaries in the form of a toolbox tailored to the specific needs of ES analysts, supported by fundamental and applied data visualization guidelines. This toolbox was developed as part of a [master's thesis](http://www.charlotteweil.fr/masterthesis), and contains a subset of its chapters.*

\newpage

#Introduction

>*"Often the importance of ecosystem services is widely appreciated only upon their loss"*
>
>\
>
> *Gretchen Daily, in The Value of Nature and the Nature of Value*
> 

## How to read this document
The document is organized to allow a reader to skim through the display tasks and suggested solutions, and focus on details where relevant. Embedded references and hyperlinks allows to navigate between sections in this interactive document; the web visualizations listed have embedded links. For a quick answer to a specific display need, table \ref{sec:table} summarizes the relevant options for the main display tasks.

Because of the context-specific nature of efficient data visualization, the approach of selecting a "best" solution for each display appears to be irrelevant. Therefore this document is organized as a toolbox suggesting several strategies for each case, from which the analyst can take inspiration and adapt the solution to fit his or her needs. Each proposed display is explained, discussed (pros and cons) and illustrated with relevant use cases and/or examples. This user guidance aims to serve as a basis and an inspiration to the analyst, suggesting several options to be used and adapted to each case. It is essential to tailor the display according to:

* the goal of the display: *What is the key message to convey?*
* the audience targeted: *Who is the display intended for? What is their level of knowledge about the project and their familiarity with scientific visualizations?*
* the time available: *Both the time expected spent by the user on the display, and the time to build the visualization. Should this convey just the key results or go in depth about the analysis?*
* the document type: *Static, dynamic, interactive?* 
* the presentation type: *How will it be released? Should this be self explanatory or will it be presented by the analyst?*\

##Background & motivation 
### Ecosystem services & natural capital assessments
Ecosystem services (ES) are essential gifts from nature making life possible and worthwhile. They rely on complex interactions of many forms of natural capital. However, about 60% of the ecosystem services are being degraded[^2back] or are not used sustainably. As the stock of natural capital decreases, due to clear and increasing human alteration [@Vitousek494], citizens and scholars are increasingly highlighting the urgency of taking action to protect it. To do so, efficient policy design requires a strong (often quantitative) understanding of ecosystem services functioning.

Such an understanding can be achieved through natural capital assessments, which locate the sources of ecosystem services, provide indications for sustainable management, identify and prioritize conservation activities, help build understanding of synergies and trade-offs between the needs and impacts of different projects or sectors, support policy design, and contribute to climate resilience and adaptation planning. These assessments document ecosystem services at different levels, from local ones such as pest control, to regional ones like flood control, to global services such as climate stabilization. They reveal interdependencies between services, critical points and timescales for degradation and recovery [@daily2000].

Natural capital assessements aim to reveal the specific benefits provided by nature, in order to develop approaches to manage environmental assets sustainably and make it easier for nature to become a primary consideration in all decisions

[^2back]: evaluated by the Millennium Assessments [@Millennium2005].


### Communicating natural capital information
Given their complexity, natural capital assessments involve a substantial understanding of phenomena and their interactions, often requiring significant studies and modeling efforts. However, these efforts will do little to achieve their intended goal of informing decisions unless the insights they generate are effectively communicated to provide usable information to decision-makers. Therefore, the present work aims to put an emphasis on this last step of process, that is, conveying the results – in particular, strategies for visualization, which are often neglected in time-limited projects which had focused on the previous steps.

Visualization is the main focus of this work, because it has been proven to be easier for the brain to understand an image than words or numbers [@Cukier]. Because of their abilities to synthesize large amounts of data into effective displays [@Ware2000], graphics have been widely used in the literature. Plus, it had been shown that judgement often results from fast and automatic processing, generally prompted by visuals [@McMahon2016] and that combining optimization with visualization promotes design innovations and empowers decision makers with a better understanding of systems behaviors (see for example the work of @Kollat_Video, @Reed04, @Fleming05, @Winer02.  More specifically for spatial data, mapping, defined by @Englund as the organization of spatially explicit quantitative information, has proven essential for many assessments of ES [@Troy]. @Hauck showed how maps are tremendously helpful to support proper management of ecosystems and ecosystem services. However, he also brings attention to the fact that they should be used carefully. 

Not only visuals, but effective visuals are crucial to achieve the intended goal of informing their audience. This work draws from the widely studied topic of information visualization (by Cleveland, Ware, Tufte among others). Visualizations of large datasets and complex information is a very effective way to conveying knowledge, but it is also non-trivial, which might explain why this topic is given so much attention in the literature. 

Visualizations support both data analysis and data presentation. The latter is the focus of this work, which assumes that at least some initial results are generated. However, visualizations are not distinctly intended to serve just one purpose, and the same displays may also be of use for exploratory analysis by the analyst, to help build insight, especially to the extent that both an analyst's own work and their stakeholder engagement are iterative. 

Developing visuals that communicate the complexities of natural capital assessments is admittedly difficult, even with existing visual tools and expertise. A preliminary part of this work consisted in identifying the specific challenges related to displaying ES results. ES information consists in varied, large, multi-dimensional datasets, often including large numbers of results that come from considering multiple objectives, scenarios, and uncertainties. These can be categorical or continuous, spatial or aspatial. The main tasks that these displays aim to support include scenario analysis, multi-objective comparisons, and expression of uncertainty. Some cases may require combinations of these tasks.

##Objectives & outline
This document is intended to support and guide analysts in their task of communicating natural capital information. 
This work proposes approaches to ES visualizations and summaries in a toolbox tailored to the specific needs of ES analysts, supported by fundamental and applied data visualization guidelines. The toolbox of visualization techniques is structured around four main themes: displaying multi-dimensional data, displaying spatial data, comparing multiple versions of spatial data, and expressing uncertainty (this organization attempts to follow these themes despite the many overlaps). 

First, one may ask *what makes a visualization successful?* Chapter 2 provides the background knowledge on the fundamentals of data visualization, key principles, guidelines and also briefly addresses the question of which tools to use. 

Then, chapter 3 gives an overview of design strategies for displaying the type of data encountered in natural capital projects. It suggests effective solutions to synthesize and communicate spatial, multi-dimensional outputs of multiple runs for multiple ES models, based on an extended literature review about visualization approaches in neighboring fields.


## Assessment of the quality of a visualization {#sec:criterion}

It is a rather subjective task to assess the quality of suggested solutions. To increase objectivity, several criteria were considered, specifically the imperatives for visualization, defined by [@stephens2012] in the context of ensemble predictions (figure \ref{fig:crit1}), and also the criteria of clarity and completeness detailed by @Allen1. The selection of solutions is guided by these established criteria

![Imperatives for visualization, defined by [@stephens2012] in the context of ensemble predictions:  richness, saliency, and robustness.](../images/criterias.png){#fig:crit1 width=40%}

## Acronyms & Terminology 

#### Important concepts & terminology {.unnumbered}

The field of ecosystem services suffers some inconsistent terminology in literature [@Englund]. Hence, an effort is made here to define precisely the terms used, point out synonyms and vague terminology, to avoid confusions.

* Natural capital: Natural capital includes all environmental assets, it is the stock of resources, such a rivers, trees, the atmosphere and all living organisms [@naturalcapitalscotland]
* ES: Ecosystem services are the benefits natural capital assets provide to humanity [@cardinale2012]
* SDU: spatial decision unit, corresponding to a geometric feature such as polygon, pixel, lines or point. SDU represent the scale at which a discrete spatial decision/intervention is undertaken.
In the context of map comparisons, the word "cell" is used in this work for SDU, to match with the literature on the topic. 
* LULC: land use/land cover
* intervention/activity: an action that can be taken on a spatial decision unit that gets reflected in parameters that feed an ecosystem services model
* portfolio: A set of SDU's and chosen activities for each SDU, emerging from an optimizer, from RIOS, or a participatory prioritization process. Portfolios get overlayed on LULC's to run the model
* scenarios: storylines that describe possible futures (but are not predictions) [@greggg] (e.g an LULC scenario corresponds to an LULC map that has been changed based on modeled or user-defined changes to represent plausible futures)
* spatial targeting: prioritization of interventions and their location on a landscape, can be undertaken with formal optimization methods, or heuristic or participatory approaches
* SOW: state of the world (scenario with quantitative definition)\

#### Jargon of the field {.unnumbered}


* ABM: Agent-Based Modeling (computational modeling of phenomena as dynamical systems of interacting agents)
* API: Application Programming Interface
* EIA: Environmental Impact Assessment
* GIS: Geographical Information Systems
* IWS: Investments in watershed services (known as Water Fund)
* MOEA: Multi-objective evolutionary algorithm* MOVA: Multi-objective visual analytics
* OGR: OpenGIS Simple Features Reference Implementation* OR: Operational research* PCA: Principal component analysis
* PFF: Production possibilities frontier (economical term for tradeoff curve)* RO: Robust optimization
* SA: Sensitivity analysis
* SLR: Sea Level Rise* SDSS: Spatial decision support systems 
* UA: uncertainty analysis\


#### Softwares and models {.unnumbered}

* CV: Coastal Vulnerability (an InVEST model)
* HRA: Habitat Risk Assessment (an InVEST model)
* InVEST: Integrated Valuation of Ecosystem Services and Trade-offs
* GDAL: Geospatial Data Abstraction Library
* MESH:  Mapping Ecosystem Services to Human well-being
* RIOS: The Resource Investment Optimization System
* SDR: Sediment delivery ratio (an InVEST model)
* VIDEO: Visually Interactive Decision-making and Design using Evolutionary Multi-objective Optimization

