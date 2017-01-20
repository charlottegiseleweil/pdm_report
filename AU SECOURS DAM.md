# URGENT ET IMPORTANT : trucs qui marchent pas

##Les renvois
semblent ne pas fonctionner lorsque le renvoi est AVANT la section à laquelle on renvoie. (e.g renvoi \ref{sec:SA} pour {#sec:SA} in chapter 4)

##{.unnumbered} marche que pour gros titres ?
e.g in {#sec:comp_map_2}
#####Interactive switching between maps {.unnumbered}
C’est relou je veux donner des mini-titres de paragraphes mais sans mille numéros, sinon je les mets juste en gras mais ca fait pas joli parce que y’a pas de saut de ligne avant le paragraphe.

a la fin the templates/chapter-style.tex, tu rajoute cette ligne:
\setcounter{secnumdepth}{3}
et ensuite tu peut changer le nombre si tu veux
les numero de chapitre, c'est 0
dou coup pour avoir mx 4, tu dois mettre 3
et ça enleve les numero de la section que tu voulais

#TRUCS À APPRENDRE

##TABLEAUX
Les tableaux comment tu fais pr que les titles sections (gras) soient pas la ligne d'en haut mais celle de gauche ? 
Mettre une légende à un tableau ?
Je dois faire un GROS tableau (une page) avec des renvois à des sections dedans. C’est possible hein ?

Solution de folie : écrire tes tableaux et graphes avec google sheets
et après ça les integre direct dans ton pdf ?

pour faire de tableaux en markdown, voila la doc : http://pandoc.org/MANUAL.html#tables
si tu veux faire d'autres trucs, c'est tout la dedans normalement
(presque)
donc pour faire les trucs de gauche en gras, il faut que tu fasse une table sans header
et ensuite que tu mettes les trucs en gras toi même (oui je sais c'est nul)

les legendes de tableau c'est facile: tu mets une ligne après le tableau
Table: Ca c'est ma belle legende.
il doit etre grand comment ton grand tableau ? UNE PAGE OU DEUX. 
pour la legende, tu peux juste commencer la ligne par un ":"
sans meme le "Table"

##SAUT DE LIGNE
Comment faire un saut de ligne en markdown ? (Apparement ça n'existe pas du coup je le fait en Latex, sauf que // donne / et  \newline donne une erreur )

si tu veux un retour a la ligne, fais \ suivi directement d'un retour a la ligne
tu peux en mettre autant que tu veux

##subfigures!

##CSL
Toute une histoire ça aussi, il est super incohérent :(

#MOINS URGENT MAIS QUAND MÊME (LÀ IL EST TEMPS DE FAIRE LA MISE EN PAGE !)

On peut transformer les ptits points de listes en petits carrés ? :D (ok this doesn’t REALLY matter au pire, mais tu m’avais dit que c’était simple y’a lgtps)

Possible de en diminuer un peu les marges des cotés en d’en bas (les diminuer toutes de moitié à peu près)

Je dois rendre une version préliminaire next week et cette fois ci elle doit ressembler à qqchose sinon ils me respecteront plus. Si tu penses qu’on arrive pas à avoir tout ça réglé ce week end (ideally avant même), tu peux juste me le sortir en Word comme il est ?

Merci trop Damdam !