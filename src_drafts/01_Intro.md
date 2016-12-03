**ACRONYMS & TERMINOLOGY**

**Important concepts & terminology**[^1back]

[^1back]: The field of ecosystem services suffers some inconsistent terminology in literature [@Englund]. Hence, an effort is made here to define precisely the terms used, point out synonyms and vague terminology, to avoid confusions.


* Natural capital :
* Natural capital is the world's stock of natural resources, which includes geology, soils, air, water and all living organisms. Natural capital assets provide people with a wide range of free goods and services, often called ecosystem services, which underpin our economy and society and some of which even make human life possible [@naturalcapitalscotland]
 natural capital, such as trees, minerals, ecosystems, the atmosphere, etc.; manufactured capital, such as machines and buildings; and the human capital of physical bodies [@costanza1997value]

* ES : Ecosystem services are the benefits nature provides to humanity [@cardinale2012]

* SDU : spatial decision unit, unit where a change on the land/seascape is made -- pixel (eg, in RIOS), or polygon (eg, for marine protected area). In the context of map comparisons, the word "cell" is used in this work for SDU, to match with the literature on the topic. 
From optimizer design doc "  In the scope of this framework, the set of possible decisions are represented by ESRI Shapefiles containing polygons, lines and/or points indicating where spatial decisions can be made.  These geometric features are called Spatial Decision Units (SDUs) and represent a discrete spatial decision/intervention which can be used to meet optimization objectives such that they are restricted by constraints.  "
= cell
* scenarios = storylines that describe possible futures (but aren't predicitons) [@greggg]
* SOW : state of the world (scenario with quantitative definition)
intervention/activity: an action that can be taken on a spatial decision unit that gets reflected in parameters that feed an ecosystem services model. In the FWAT context, this typically means changing the LULC to a new row of the biophysical table that has modified values
* LULC : land use/land cover
* LULC scenario = A LULC map that has been changed based on modeled or user-defined changes to represent plausible futures INDEPENDENT of implementing an optimization or other portfolio (this may be different than how others see it)
portfolio = (etc cf gnrl trckr) - A set of SDU's and chosen activities for each SDU, emerging from an optimizer, from RIOS, or a participatory priortization process. Portfolios get overlayed on LULC's to run the model

**Jargon of the field acronyms**

* ABM : Agent-Based Modeling (computational modeling of phenomena as dynamical systems of interacting agents)
* API : Application Programming Interface
* EIA : Environmental Impact Assessment
* GIS : Geographical Information Systems
* MOEA : Multi-objective evolutionary algorithm* MOVA : Multi-objective visual analytics
* OGR OpenGIS Simple Features Reference Implementation* OR : Operational research* RO : Robust optimization* SDSS : Spatial decision support systems 
* IWS : investments in watershed services (known as waterfund)

**Softwares and models**

* InVEST : Integrated Valuation of Ecosystem Services and Tradeoffs
* GDAL : Geospatial Data Abstraction Library
* MESH :  Mapping Ecosystem Services to Human well-being
* RIOS: The Resource Investment Optimization System
* SDR : Sediment delivery ratio (a model in InVEST)
* VIDEO : Visually Interactive Decision-making and Design using Evolutionary Multi-objective Optimization

#Introduction##Background & motivation *why this problem is important*

### Ecosystem services
*What are ES?*
Food, water, fuel, fiber, timber, pollination, purification, inspirational and recreational landscapes are examples of essential gifts from nature making life possible and worthwhile. These are tangible or intangible ecosystem services.

*Examples of ES*
Some of these services are obvious, some are less. Forests, for example, not only provide a natural carbon storage that helps regulate climate, but also hold soil in place along streams, participating in improved water quality, which benefits for people downstream. Habitats in rivers and along coastlines support populations of fish that provide food, including in areas of chronic food insecurity. Biodiversity stabilize ecosystems [@cardinale2012]. Mangroves stabilize shorelines and decrease damage to people and property from storms. Oceans also store carbon. 

*We depend on ecosystems*
These services rely on complex interactions of many forms of natural capital. These ecosystems that surround us are essential to our survival and well-being, and are the bedrock of a sustainable economy. Nature and people form the biosphere, caring for the former equates to caring for the latter and vice versa. Increasingly, we can map the most important forests, coastal habitats and other ecosystems and show how they support us. This is crucial in order to prioritize the use of resources and sustainably manage our natural world. In short, nature is at the source of human well-being: people depend on nature.

*Ecosystems are in danger*
However, about 60% of the ecosystem services[^2back] are being degraded or are used unsustainably. Not only degradation of ES is a major loss of natural asset, but it harms significantly human well-being [@Millennium2005]. Furthermore, the relationships between harm to an ecosystem and loss in its services are rarely linear; for example, loss in biodiversity induces more important change on every ecosystem process it affects [@cardinale2012].

[^2back]: evaluated by the Millenium Assessments [@Millennium2005]. 

Sadly, the value of ecosystem services is often widely appreciated only upon their loss [@daily2000].

the concepts of ES and adapative mngmt implemented in natural resources policy but the two not connected (RUHL 2016)

As the abundance of ecosystem capital decreases, due to clear and increasing human alteration [@Vitousek494], it is more than ever urgent to take action. To do so, efficient policy design requires a strong (often quantitative) understanding of ecosystem services functioning.

###Natural capital assessments

**http://www.sciencedirect.com/science/article/pii/S1470160X16305957**

The benefits nature provides to people and the economy are priceless. Natural capital assessments aims to provide informations on the matter; they help understand the ecosystem services structures, involving quantitative estimates.

Valuating natual capital is not new. 20 years ago, For the entire biosphere, the value (most of which is outside the market) is estimated to be in the range of US$16–54 trillion (1012) per year, with an average of US$33 trillion per year. Because of the nature of the uncertainties, this must be considered a minimum estimate. Global gross national product total is around US$18 trillion per year. - See more at: http://mro.massey.ac.nz/handle/10179/5983#sthash.GhT7qo36.dpuf [@costanza1997value]

Valuating ecosystem services aims to cultivate appreciation for the incredible invisible benefits from nature [@AnneBlog].

Natural capital assessments documents ecosystem services at different levels, from local ones such as pest control, to regional ones like flood control, to global services such as climate stabilization [@daily2000]. They reveal interdependencies between services, critical points and timescales for degradation and recovery 

Because degradation or loss of ecosystem benefits would incur costs, for example for water treatment, erosion control, infrastructure maintenance and disaster relief; it would undermine security, prosperity and economic development. Therefore, a thorough understanding of ecosystem assets is crucial. Natural capital assessments locates the sources of ecosystem services, provides indications for sustainable management, identifies and prioritizes conservation activies, helps build understanding of synergies and trade-offs between the needs and impacts of different projects or sectors, supports policy design, contributes to climate resilience and adaptation planning. Strong of this understanding, enlightened decisions can be taken to secure these assets in a context of social and economic developemnt [@Myanmar16]. In short, natural capital assessment hopes to make it easier for nature to become a primary consideration in all decisions, by revealing specifically what are the benefits from it [@AnneBlog].

![Examples of how a natural capital-based approach can be used to mainstream enviromental information throughout the development planning process, contributing to more effective and efficient development plannign decisions, from [@Myanmar16]](../images/mymy.png)

An important clarification that must be highlighted when presenting the concept of natural capital, is that it's not merely putting a dollar tag on nature. On the contrary, the natural capital assessments approaches aim to correct capitalist society bias that make decisions based on economical return on investment; by including nature in the capitalist approach. Monetary valuation is just one small aspect of natural capital assessment, that helps connect in some contexts of financial planing and comparisons [@AnneBlog].

Because they are idiosyncratic (=depends on local conditions), natural capital assessments are complex[@daily2000]

Identify the different alternatives, quantify their respective impacts, and value their respective consequences. The typical measuring unit for this last step of valuation is monetary [@daily2000]
### Communicating natural capital information
Indeed, the goal of a natural capital assessment is to make better decisions, and this implies at some point convincing decision makers based on scientific facts.  These result from painstaking studies, and it crucial to communicate them well, otherwise not doing justice to the previous effort. The goal of this paper is therefore to put an emphasis on this last step of process that is converying the results, often time neglected in time-limited projects which had focused on the previous steps. 

Mapping—the organization of spatially explicit quantitative information—is essential for many assessments of ES [@Englund].

### Visualizations matters

It is easier for the brain to comprehend an image versus words or numbers (A special report on managing information. Cukier, 2010),

TODO (TO REPHRASE THIS IS COPY/PASTE)
Thoroughly explored, (Cleveland, 1994; Ware, 2000; Spence, 2001; Few, 2004, Tufte; 2006; Strange, 2007 and more), the topic of visualization is key in research presentation and communication because it allows to synthesize into effective graphics large amounts of data (C. Ware Information Visualization: Perception for Design, 2000 todo). Visualization serves two major purposes, data analysis (Rebolj and Sturm, 1999, Jeong et al., 2006, Kollat and Reed, 2007, Wagener and Kollat, 2007 and Xu et al., 2010) and data presentation. The latter is the focus of this work, assuming that the analysis is completed.

It has been shown that combining optimization with visualization promotes design innovations and empowers decision makers with a better understanding of systems behaviors ([@Kollat_Video], [@Reed04], [@Fleming05], [@Winer02] and many more)

Visualization serves two major purposes, data analysis (Rebolj and Sturm, 1999, Jeong et al., 2006, Kollat and Reed, 2007, Wagener and Kollat, 2007 and Xu et al., 2010) and data presentation. The latter is the focus of this paper, assuming that analysis is completed.
##The Natural Capital Project
The Natural Capital Project (NatCap) aims to account for nature’s contributions to society, so that leaders worldwide can take into account the value of ecosystem services, to make smarter decisions for a more sustainable future. to integrate the value nature provides to society into all major decisions. Our ultimate objective is to improve the well-being of all people and nature by motivating greater and more targeted natural capital investments.

Founded in 199??, the Natural Capital Project gathers NGOs and academics, namely it is a partnesrship of four parties: the World Wild Fund (WWF), The Nature Conservancy (TNC), University of Minnesota and Stanford University. (In the InVEST license, "The Natural Capital Project" is defined as these four parties.)

NatCap approach can be summarized in three actions (1) advance science of ecosystem services, (2) create user-friendly approaches and tools and (3) build and tell success stories. These actions lead to the goal of getting natural capital infromations into decisions, serving the broader purpose of making decisions with better outcomes for people and nature. [@StaciePrez]

NatCap developps tools meant to assess nature's contribution to society. All sofwares developped at NatCap are open-source, to make the science accessible and useful in real decisions. The main one is InVEST which gathers several models tackling various ecosystem services such as water yield, sediment retention, carbon storage, wind energy, habitat quality, crop pollination... It explores, maps and value these ecosystem services and translate the change in ecosytem to its corresponsing change in ecosystem services and to the impacts and benefits to people, therefore it is especially useful to estimate impacts of change in ecosystem services. 

 Other softwares include RIOS which aims to optimizing cost-effective investments for ecosystem services, OPAL which quantifies the impacts of development and the value of offsetting them with protection and restoration, but also the Python library PyGeoprocessing which implements GIS operations on which InVEST is based.

![Ecosystem services assessment strategy[@StaciePrez]](../images/ESassess.png)
![Natural Capital Approach [@greggg]](../images/natcapapproach.png)

##Objectives
How to synthesize and communicate spatial/multi-dimensional outputs of multiple runs for multiple ES models ?

Easy approaches to clear ES viz and summaries, 

Gather an overview of existing display toold and build upon these to improve natural capital visualizations and develop the needed display. The first objective of this work is to identify the challenges and the needs for an efficient communication of results. In a second phase, the aim is to suggest powerful and innovative solutions to adress these points. A framework for implementation of the proposed solutions could be developped, depending on the remaining time. 

- tool as having a focus of exploratory analysis for the analyst, to help build insight, which would take some pressure off challenges of making pretty static graphs (though great to do both, but we could prioritize the first)

Integrate in the context of NatCap's work. Incorporate the display for MESH outputs and reports. Also, in the context of the developpement plan for InVEST 4.0, one of the three long-term InVEST goals is to integrate reporting as part of the InVEST workflow [Rich Webinar 29/11/16]

## Outline
This master thesis presents approaches to displaying natural capital informations, with specific examples of use cases in Peru, Kenya and Hawaii. Section 2 describes the adopted methodology, presents the use cases on which the work was based and detail the corresponding workflow. Section 3 summarizes an extended literature review that was conducted to explore the design strategies to displaying multi-dimensional, spatial, multi-objective and uncertain data which are the data types natural capital informations contain. It also adresses the question of which tools to use. Section 4 presents the results of (1) the identified display needs (2) the suggested solutions for each need. *Section 5 maybe discussion, maybe detail one major implementation ? TODO dunno yet!*. *Section 6 discusses next steps and do I need to say smg about the conclusion, isn't it obvious?!*


