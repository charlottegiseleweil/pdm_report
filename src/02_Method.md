#Method

> *"Improving communication in the IPCC reports is by no means an easy task"\
>
> [@McMahon2016]*
##Project definition and scoping
Within the initial framework of the project on environmental modeling and data analysis, several potential directions were considered. Possible directions of work targeted handling spatial interdependence in the models or assessing the value of detailed data in improving optimization outputs and modeled impacts. However, an extended exploration of the needs was conducted to understand where this work could bring the most useful contribution. Analyzing the need is indeed crucial to a good project definition. This preliminary step was achieved during the first month and the annual gathering of NatCap has been a great occasion to identify the areas of needs, it resulted in defining the project around the topic of display tools for ecosystem services. The question of how to synthesize and communicate spatial and multi-dimensional outputs of multiple runs for multiple ES models would be addressed. The goal being to define easy approaches to clear ES visualizations and summaries.
##Background and context
###Literature review
The first steps to approaching the question of displaying natural capital information were to explore the context, learn notions of data visualization in general and understand the state-of-the art. Background knowledge was built gathering from the literature. It turned out this literature review could help answer partly the need for a useful guidance document on ES visualization, by putting together the various approaches and main strategies for displaying ES information. 

### Tools market study
Meanwhile, in computational data visualization, the resulting display highly depends on the choice of tool. And it turned out that the available data visualization tools were numerous, varied, overlapping. An exploration of these softwares and libraries attempted to guide with more clarity towards the choice of an adapted tool. To conduct such a comparison, some of these tools were learned and used.

##Identification and prioritization of display needs {#sec:survey}
In order to identify the communication needs of ecosystem services analysts and to understand how well existing needs are met, a survey was crafted, in collaboration with a small team of analysts.

First, based on typical example cases and interviews of professionals in the field of ecosystem services, based at the Natural Capital Project, some display needs were identified. Then this list was refined and completed thanks to the inputs of the broader team. Next, these needs were gathered and organized in a survey document sent out to a broader community of professionals in the field, including scientists, ecologists, hydrologist, economists, analysts and researchers working within the Natural Capital Project. The survey questions can be found in Annex (*{section number} TODO bpb: survey here or in Annex?*). A total of 14 answers were collected, where participants assessed, for each identified need, its usefulness, but also commented on their current implementation and the usefulness of improving the current displays. The two tiers were separated as such: one just to assess “demand” or importance of different types of visualization needs (columns D-E-F in green). The second tier gathered details of current approaches for meeting these needs (column G-H-I), to help better assess gaps that can be filled.

The survey was roughly grouped according to 6 thematic issues (eg, portfolio or scenario descriptions, ES model results, beneficiaries), recognizing in practice there are not clear boundaries. 30 different display tasks were listed; they were phrased purposively avoiding specifying the actual visualization in order to elicit needs and current approaches in an unbiased way. It was circulated as a google sheet so that respondents may add rows  for needs that would have not been pre-identified.

The 14 respondents were all professionals in the field of ecosystem services, working in different domains ranging from marine, to FWAT (*bpb: need all these details?*). They rated the usefulness of each display tasks[^335back] both in terms of (1) the need for this type of display in general and (2) the need for an improved implementation to these displays. The former will serve as a basis to point relevant needs for the user guidance to displaying natural capital information (Chapter \ref{sec:UserGuide}). The latter will allow to identify the areas where better implementations and solutions are required, prioritize between the needs, and will guide the development of a display tool (Chapter \ref{sec:TheTool}). 

[^335back]: On a scale from 0 to 5, with 0 meaning totally useless and 5 totally useful. 
[^66809back]: link to the survey !!

 ![Extract of the survey: Gathering NatCappers' visualizations needs and tools](../images/survey.png){#fig:survey width=100%}

##Example Cases
The present work have found applications, and based its trials on several on-going projects at the Natural Capital Project. 

###Prioritization of native forest restoration in Pu‘u Wa‘awa‘a, Hawai‘i
#### *A spatial multi-objective approach to watershed conservation* {.unnumbered}

The study aimed to develop a method to analyze the tradeoffs relative to effective watershed restoration planning, applied to the case of a watershed in Hawai‘i: Pu‘u Wa‘awa‘a located in the North Kona region of Kekaha. The paper further informs on prioritization of conservation spending, under different climate scenarios, to include possible climate change. It focuses on groundwater recharge and landscape flammability and details management costs. 
 
In the context of this work, this project's display tasks were (1) to display the land cover maps corresponding to each scenario, (2) to assess the impact of the proposed restoration scenarios for both objectives of maximazing groundwater and minimizing landscape flammability, and (3) to show spatial prioritization for each objective and the two combined, and the associated costs. 

*bpb: is it weird that I bring this up and don't detail the actual resutls/figures for Hawaii later ? I could, but I don't really see where, except by putting my figures as examples for the toolbox but that doesn't sound super humble, and I don't think they're the best...*

###The Upper Tana Nairobi Water Fund {#sec:tanacase}#### *Improving Water for Millions in Kenya* {.unnumbered}
The Tana River supplies 95% of the water for a total of 9 million people living in Nairobi and surroundings, feeds one of the country’s most important agricultural areas and provides half of the country’s hydropower output. In the past decades, many forests and wetlands have been converted to agriculture, therefore decreasing the natural landscape capacity to store runoff water and retain sediments and soil in place. Today, one of the outcome of increased sedimentation is that 60% of Nairobi’s residents do not have access to a reliable water supply. To solve this problem, the Upper Tana-Nairobi Water Fund was created. The Natural Capital Project analyses the landscape to find out where and what would be the most efficient actions to undertake.
In the context of this work, this project's display tasks were to compare scenarios resulting from a mutli-objective optimization, accounting for uncertainty. 
##Display toolbox
### Structure
The display needs were organized per theme, in the most logical way that could be found, despite the many overlaps. Once these questions were organized, the aim consisted in answering each effectively. However, the approach of selecting a "best" solution for each display need quickly turned out to be irrelevant as each display need is very specific and context dependent. The alternative was to build an organized toolbox suggesting several strategies for each cases, where the analyst could take inspiration and adapt its solution to fit his or her needs. 

The document aimed to be explored and skimmed through, with fast referencing (dynamic links in the pdf document) to related topics and displays. The summarizing table (\ref todo) links the display needs ES analyst can encounter with the suggested solutions.
### Suggested solutions {#sec:criterion}
Strong of the knowledge from the literature review, and the current state of existing visualizations, display solutions were suggested. For the tasks where no satisfying solutions could be found, new ones were developed, or adapted from solutions existing in neighboring fields in the literature. 

It is a rather subjective task to assess the quality of suggested solutions. To increase objectivity, several criteria were considered, specifically the imperatives for visualization, defined by [@stephens2012] in the context of ensemble predicitons (figure \ref{fig:crit1}), and the criteria of clarity and completeness detailed by @Allen1, in Annex \ref{fig:crit2}.

![Imperatives for visualization, defined by [@stephens2012] in the context of ensemble predicitons:  richness, saliency, and robustness.](../images/criterias.png){#fig:crit1 width=40%}

![When Evaluating a Figure for Clarity and Completeness, Consider the Following Questions[@Allen1]](../images/assess_table.png){#fig:crit2 width=80%} *will go in annex? bpb?*

### Sample use case: Prioritization of native forest restoration in Pu‘u Wa‘awa‘a, Hawai‘i (*remove?*)
*bpb: Is this really needed?* (todo if so)

#### Defining the needs
In terms of static visualizations. The main goal of the paper  is to look at the impact of restoration (land cover scenarios) on the ES objectives (water, flammability) both independently and then simultaneously with climate scenarios going on in the background.

##Development of a web application
Building on the knowledge from the previous chapters, and attempting to partially fill the gaps identified where improved visualizations would be useful, a prototype of a web application was developped. This was done in the context of the multi-objective optimization for the Tana waterfund (detailed in \ref{sec:tanacase}). Details about the implementation method and choices can be found in chapter \ref{sec:TheTool}.
\
\


*Methodolgy to go in chapter 5, introducing the webapp, or here? (bpb?) *
*Maybe just summarize it here?*

##Master thesis workflow 

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|}
\hline
\textit{\textbf{Weeks}} & \textit{\textbf{Main focus}} & \textit{\textbf{Skills gained and tools learnt}} \\ \hline
1-3 & Project definition and scoping & Natural capital, InVEST \\ \hline
4 & Analysis of need & Surveying \\ \hline
5-10 & Literature review & Data visualization \\ \hline
11-12 & Sample hawaii & GIS (QGIS) \\ \hline
13-17 & Guidance document redaction & Markdown, LaTEX, Github \\ \hline
18-19 & Webapp design & - \\ \hline
20-25 & Webapp implementation & \begin{tabular}[c]{@{}l@{}}Html, CSS, Javascript (D3.js)\\ Python pandas library\end{tabular} \\ \hline
\end{tabular}
\end{table}

(*bpb: needed?*)