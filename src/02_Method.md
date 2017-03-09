#Methods & Context

> *"Improving communication in the IPCC reports is by no means an easy task"\
>
> @McMahon2016*

##Approach 
###Project definition and scoping
Within the initial framework of the project on environmental modeling and data analysis, several potential directions were considered, such as targeting spatial interdependence in the models or assessing the value of detailed data in improving optimization outputs and modeled impacts. However, a thorough exploration of the needs was conducted to understand where this work could bring the most useful contribution. Assessing the needs is a crucial step of the project cycle as it helps identify the most relevant research questions. This preliminary step was achieved during the first month and at the NatCap annual meeting, which was a great opportunity to understand current practices and needs. It resulted in the definition of the project around the topic of display tools for ecosystem services (ES). The question of how to synthesize and communicate spatial and multi-dimensional outputs of multiple runs for multiple ES models would be addressed, the goal being to define easy approaches to clear ES visualizations and summaries. 

###Background and context
#### Literature review
The first steps to approaching the question of displaying natural capital information were to explore the context, learn notions of data visualization in general and understand the state-of-the art. Background knowledge was gathered from the literature and attending expert’s lectures. It turned out this literature review could help answer partly the need for a useful guidance document on ES visualization, by putting together the various approaches and main strategies for displaying ES information. 

#### Tools market study
Meanwhile, in computational data visualization, the resulting display highly depends on the choice of tool. And it turned out that the available data visualization tools were numerous, varied, overlapping. An exploration of these software and libraries attempted to guide with more clarity towards the choice of an adapted tool. To conduct such a comparison, some of these tools were learned and used.

###Identification and prioritization of display needs {#sec:survey}
In order to identify the communication needs of ecosystem services analysts and to understand how well existing needs are met, a survey was crafted, in collaboration with a small team of analysts.

First, based on typical example cases and interviews of professionals in the field of ecosystem services, based at the Natural Capital Project, some display needs were identified. Then this list was refined and completed thanks to the inputs of the broader team. Next, these needs were gathered and organized in a survey document sent out to a broader community of professionals in the field, including scientists, ecologists, hydrologist, economists, analysts and researchers working within the Natural Capital Project. The survey questions can be found in appendix \ref{fig:survey}. A total of 14 answers were collected, where participants assessed, for each identified need, its usefulness, but also commented on their current implementation and the usefulness of improving the current displays. The two tiers were separated as such: one just to assess “demand” or importance of different types of visualization needs (columns D-E-F in green). The second tier gathered details of current approaches for meeting these needs (column G-H-I), to help better assess gaps that can be filled.

The survey was roughly grouped according to 6 thematic issues (eg, portfolio or scenario descriptions, ES model results, beneficiaries), recognizing in practice there are not clear boundaries. 30 different display tasks were listed; they were phrased purposively avoiding specifying the actual visualization in order to elicit needs and current approaches in an unbiased way. It was circulated as a google sheet so that respondents may add rows  for needs that would have not been pre-identified.

The 14 respondents were all professionals in the field of ecosystem services, engaging in both academic and applied work. They rated the usefulness of each display tasks[^335back] both in terms of (1) the need for this type of display in general and (2) the need for an improved implementation to these displays. The former will serve as a basis to point relevant needs for the user guidance to displaying natural capital information (Chapter \ref{sec:UserGuide}). The latter will allow to identify the areas where better implementations and solutions are required, prioritize between the needs, and will guide the development of a display tool (Chapter \ref{sec:TheTool}). 

[^335back]: On a scale from 0 to 5, with 0 meaning totally useless and 5 totally useful. 



###Display toolbox
#### Structure
The display needs were organized per theme, in the most logical way that could be found, despite the many overlaps. Once these questions were organized, the aim consisted in answering each effectively. However, the approach of selecting a "best" solution for each display need quickly turned out to be irrelevant as each display need is very specific and context dependent. The alternative was to build an organized toolbox suggesting several strategies for each cases, where the analyst could take inspiration and adapt its solution to fit his or her needs. 

The document is intended to be explored and skimmed through, with fast referencing (dynamic links in the pdf document) to related topics and displays. The summarizing table (\ref{sec:table}) links the display needs ES analyst can encounter with the suggested solutions.

#### Suggested solutions {#sec:criterion}
Based on the knowledge from the literature review, and the current state of existing visualizations, display solutions were suggested. For the tasks where no satisfying solutions could be found, new ones were developed, or adapted from solutions existing in neighboring fields in the literature. 

It is a rather subjective task to assess the quality of suggested solutions. To increase objectivity, several criteria were considered, specifically the imperatives for visualization, defined by [@stephens2012] in the context of ensemble predictions (figure \ref{fig:crit1}), and the criteria of clarity and completeness detailed by @Allen1, in appendix \ref{fig:crit2}.

![Imperatives for visualization, defined by [@stephens2012] in the context of ensemble predictions:  richness, saliency, and robustness.](../images/criterias.png){#fig:crit1 width=40%}


###Development of a web application
Building on the knowledge from the previous chapters, and attempting to partially fill the gaps identified where improved visualizations would be useful, a prototype of a web application was developed. This was done in the context of the multi-objective optimization for the Tana waterfund (detailed in \ref{sec:tanacase}). Details about the implementation method and choices can be found in chapter \ref{sec:TheTool}. The implemented prototype allow to explore the concept of a similar generic tool.

Information on the master thesis workflow and time allocation can be found in the appendix.



## Research context
### The Natural Capital Project
> *"The Natural Capital Project strives to improve the well-being of people and nature by integrating the value nature provides to society into all major decisions leading to greater and more targeted natural capital investments."*

This work was done within the framework of the Natural Capital Project, at Stanford University’s Woods Institute for the Environment. The Natural Capital Project (shortened NatCap) aims to account for nature’s contributions to society, so that decision-makers worldwide can take into account the value of ecosystem services, leading to wiser and more sustainable choices and better outcomes for people and nature. Founded in 2005, the Natural Capital Project gathers NGOs and academics, namely it is a partnership of four parties: the World Wild Fund (WWF), The Nature Conservancy (TNC), University of Minnesota and Stanford University.

NatCap's work falls in three types of activities: *"advance science of ecosystem services, create user-friendly approaches and tools and build and tell success stories"* [@Strategic]. NatCap develops tools meant to assess nature's contribution to society. All software developed at NatCap is open-source and its development is typically driven by real-world applications, to make the science accessible and useful in real decisions. The main one is the InVEST suite, which includes a host of models tackling various ecosystem services such as water yield, sediment retention, carbon storage, wind energy, habitat quality and crop pollination. It offers a good testbed for ES visualization tasks with potential general applicability, as @Kkkk refers to InVEST as "possibly being the most widely used GIS software tool for mapping ecosystem services". InVEST and related tools help users explore, map and value these ecosystem services and translate the change in ecosystem to its corresponding change in ecosystem services and to the impacts and benefits to people. Other software includes RIOS, used for targeting cost-effective investments for watershed services; OPAL, which quantifies the impacts of development and the value of offsetting them with protection and restoration; and the Python library PyGeoprocessing which implements GIS operations on which InVEST is based. For further details and examples of applications, @Ruckelshaus15 gives a good overview of NatCap's projects.

The ecosystem service assessment strategy NatCap follows can be summarized in 6 steps, with repeated iterations throughout the process [@StaciePrez]. First, define the partnership, roles and objectives. Secondly, compile the data. Thirdly, generate baselines and scenarios. In fourth, assess the corresponding outcomes. Then, synthesize the results. Last, but not least, inform decisions by communicating solutions. These two last steps correspond to the focus of this work.

![Natural Capital Approach [@greggg]](../images/natcapapproach.png){#fig:approach}

The present work integrates in the context of NatCap's approach; the suggested tool (chapter \ref{sec:TheTool}) applies to a undergoing project and supports communication of its results. It is a prototype to a generic tool that could be incorporated in InVEST or MESH outputs and reports. This is aligned to the development plan for InVEST, as one of the three long-term goals is to integrate reporting as part of the software workflow [@webinar].

### Use Cases
The present work has found applications, and based its trials on several on-going projects at the Natural Capital Project. 

#### Prioritization of native forest restoration in Pu‘u Wa‘awa‘a, Hawai‘i
#### *A spatial multi-objective approach to watershed conservation* {.unnumbered}

The study aimed to develop a method to analyze the tradeoffs relative to effective watershed restoration planning, applied to the case of a watershed in Hawai‘i: Pu‘u Wa‘awa‘a located in the North Kona region of Kekaha. The paper further informs on prioritization of conservation spending, under different climate scenarios, to include possible climate change. It focuses on groundwater recharge and landscape flammability and details management costs. 
 
In the context of this work, this project's display tasks were (1) to display the land cover maps corresponding to each scenario, (2) to assess the impact of the proposed restoration scenarios for both objectives of maximizing groundwater and minimizing landscape flammability, and (3) to show spatial prioritization for each objective and the two combined, and the associated costs. 

The static visualizations aimed to inform about the impact of restoration (land cover scenarios) on two ES objectives (water, flammability) both independently and then simultaneously while considering several climate scenarios. The resulting constructed maps can be found in appendices \ref{fig:hawaii1}, \ref{fig:hawaii2}, \ref{fig:hawaii3}, \ref{fig:hawaii4}.

#### The Upper Tana Nairobi Water Fund {#sec:tanacase}
#### *Improving Water for Millions in Kenya* {.unnumbered}

The Tana River basin supplies 95% of the water for a total of 9 million people living in Nairobi and surroundings, feeds one of the country’s most important agricultural areas and provides half of the country’s hydropower output. In the past decades, many forests and wetlands have been converted to agriculture, therefore decreasing the natural landscape capacity to store runoff water and retain sediments and soil in place – changes which have negatively impacting hydropower and drinking water supply. 

The Upper Tana-Nairobi Water Fund is an initiative bringing together representatives of government, NGO, and private entities to promote clean and reliable water supplies for downstream stakeholders, while simultaneously fostering sustainable livelihoods for upstream farmers and others. This project is a typical case of spatial targeting problem, where the goal is to determine *where to do what* on the landscape to achieve given objectives. The main “on-the-ground” action the fund can take is the identification and prioritization of extension activities, whereby actors on the landscape (mainly farmers) are visited by local NGO’s to diagnose and offer incentives for ways to improve farm and water-related outcomes. Ideally, achieving agricultural livelihood outcomes and improvements to the water supply can be achieved simultaneously, though in some places there might be trade-offs, which the Fund is interested in minimizing. The analysis presented in the use case demonstrates how to find out where and what would be the most efficient actions to undertake on the landscape.

*The present work integrates with the water fund analysis described above, conducted by Benjamin Bryant, who provides the contextual information and project data. More details can be found [on the introductory page of the developed tool](https://charlottegiseleweil.github.io/webviz_natcap/intro.html).*


