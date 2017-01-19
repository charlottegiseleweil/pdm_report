# NatCapViz: an innovative tool to display natural capital results {#sec:TheTool}

## Identifying the needs (survey results)

The needs were identified thanks to the survey filled by ecosystem services analysts. As detailed in \ref{sec:survey}, the respondents assessed for each listed display task: its usefulness in general, and the need for an improved implementation with a score from 0 to 5; 5 meaning *totally useful*. 

### Prioritizing display needs

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

### Qualitative analysis of comments and interviews
Additionally to the scores, respondents were allowed to provide comments, and interviews were conducted on specific use cases, which resulted in important information.

The interest in an interactive tool was repeatedly expressed, allowing to display and compare portfolios, objective score maps, and also to compare results upon update of ES metrics weights.
>"Static maps often do not suit communication needs, and I could really use a ready way to build interactive maps." Rob
>  “With synergies and tradeoffs it would be amazing to be able to dynamically adjust the weights of ES metrics so that decision makers can visualize the effect of marginal changes in their (or their constituents) values” Ryan
> About objective score maps: “we are finding better uptake through use of interactive, user-friendly interfaces” Eric

TODO : Display & Compare portfolios
> interactively (Rob)
> This seems super important and not something as easily done in Q as comparing just 2 maps! (Becky), 
> it would be great to have something more user-friendly than Ben's R scripts (Adrian)

TODO :Characterize uncertainty in spatial model outputs derived from mutliple runs
> "would be nice to have a standard way of describing variation so you don't have to reinvent each time" Becky

TODO: Beneficiaries impact by subgroups
>  talk to Lisa about how we were thinking about the difference between servicesheds and benefitsheds !!!
> ben says Super important, but important to distinguish (again...) generating relevant stats vs displaying them 

Several opportunities for improvements were underlined in the topics of uncertainty and beneficiaries. Although it was noted that the demand for detailed information about uncertainty rarely arises from the stakeholders, several respondents suggested to create this demand, as they considered important and interesting to display the results' underlying uncertainty.

### Summary of the need
These results lead to design question : 
interactive display, allowing to ...

1. Compare many portfolios [both “pairwise” selecting pairs to look at, and also summarizing multiple]
2. Understand similarity and differences between many pixel-based maps
3. Location of synergies of intervention/scenario on multiple ES metrics
4. Location of tradeoffs of intervention/scenario on multiple ES metrics
5. Understand trade-offs and synergies between > 3 objectives under small number of scenarios
6. Characterize uncertainty in spatial model output - derived from multiple runs
7. Show/quantify beneficiaries impact by subgroups


##Design
The proposed tool takes the form of a dashboard. Multiple linked plots allow to explore interactively the results.

Based on the Upper Tana Waterfund use case, described in \ref{sec:tanacase}, the design of the tool is refined. Its prototype includes 5 elements: a map, a parallel coordinates plot, sliders.

The sliders ...

The map ...

highlight iterative process, and several versions of design doc !

##Implementation
###Tools and technology
Webapp,
D3.js, Dc.js, Geotiffs.js, leaflet, crossfilter, parcoords.
###Workflow


##Testing
(iterations and feedbacks)

##Result

The result is a prototype of a tool... This webapp...

