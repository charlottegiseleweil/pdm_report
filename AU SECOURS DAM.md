#URGENT ET IMPORTANT : trucs qui marchent pas

**Les renvois**
semblent ne pas fonctionner lorsque le renvoi est AVANT la section à laquelle on renvoie. (e.g renvoi \ref{sec:SA} pour {#sec:SA} in chapter 4)

**{.unnumbered} marche que pour gros titres ?**
Du coup j'ai fait \setcounter{secnumdepth}{3}. C'est un peu chelou parce que le titre n'est pas identé . j'arrive pas à lui mettre une tablulation. C'est bizarre car normalement leurs titres sont indentés. EN plus le paragraphe qui suit est identé, alors que normalement les paragraphes ne sont pas indentés... ?

#TRUCS À APPRENDRE

**TABLEAUX
Solution de folie : écrire tes tableaux et graphes avec google sheets
et après ça les integre direct dans ton pdf ?

**Je dois faire un GROS tableau (une page) avec des renvois à des sections dedans. C’est possible hein ?
il doit etre grand comment ton grand tableau ? UNE PAGE OU DEUX. 

**subfigures!

**CSL
Toute une histoire ça aussi, il est super incohérent :(

#MOINS URGENT MAIS QUAND MÊME (LÀ IL EST TEMPS DE FAIRE LA MISE EN PAGE !)

**Possible de en diminuer un peu les marges des cotés en d’en bas (les diminuer toutes de moitié à peu près)
-------
#Trucs réglés (pour mémoire de charlotte)

*Mettre une légende à un tableau ? 
Après tableau, mettre Table: legend

*SAUT DE LIGNE: \ suivi directement d'un retour a la ligne

*Petits carrés trop cools <3

*Les tableaux comment tu fais pr que les titles sections (gras) soient pas la ligne d en haut mais celle de gauche ? 
pour faire de tableaux en markdown, voila la doc : http://pandoc.org/MANUAL.html#tables
si tu veux faire d autres trucs, c est tout la dedans normalement
(presque)
donc pour faire les trucs de gauche en gras, il faut que tu fasse une table sans header
et ensuite que tu mettes les trucs en gras toi même (oui je sais c est nul)
