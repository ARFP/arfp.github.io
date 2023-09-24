---
title: "Galaxies"
layout: default
serie: "projets"
order: 11
---

## Exercice de modélisation de base de données 

- Niveau : Difficile 

1. Concevez le Modèle Conceptuel des Données
2. Réalisez le Modèle Logique des Données
3. Implémentez le script SQL de création de la base de données


## L'empire de Merise

Bienvenue à bord, Sergent.

Votre voyage prend fin, vous êtes arrivé à destination : 

- Galaxie: 	DontDoThat
- Planète : 	Olala
- Distance Terre : 42 années lumières

La galaxie DontDoThat est gouvernée par l'impitoyable impératrice Merise. 
Merise a littéralement perdu la raison. Les citoyens de la galaxie ont formé une rébellion et nous prêtons main forte à leur armée de Pirates (c'est comme cela qu'ils se nomment eux-mêmes).

Le Général Bushbé, Pirate dont la réputation s’étend jusqu’à l’infini, a établi son repère sur une des planètes de cette galaxie pour diriger la rébellion sur le terrain. Dans ce lieu secret, les vaisseaux galactiques du Pirate sont préparés pour de nouvelles missions dévastatrices.
 
Le Général Bushbé, irrité par les défaites subies récemment désire revoir la gestion de ses navires et de ses équipages.

Il a nous a mandaté pour lui fournir l'infrastructure de gestion de sa rébellion.

Malheureusement, notre position actuelle ne nous permettra de rétablir le contact avec les armées du général Bushbé que dans plusieurs mois. Il faudra donc se contenter des renseignements de ce document pour établir une base de données solide et efficace.

Ce qui va suivre est confidentiel et doit nous servir de référence à la conception de la base de données. 

---

Le Général Bushbé débuta sa carrière sur la bordure de la galaxie Ventura plus précisément sur la planète des Mécanos.
 
Les pillages incessants opérés par l’Empire de Merise sur les planètes de DontDoThat n'ont pas suffi à nourrir la soif de ressources de l'impératrice (Les rumeurs racontent qu'elle raffole du miel des savanes). 

Ces invasions commençaient à inquiéter les galaxies voisines, dont la galaxie Ventura, proche voisine.

Enrôlé de force à l'âge de 19 ans, pour ses grandes compétences en mécanique spatiale, Bushbé s'est vite engagé personnellement dans la lutte contre l'oppresseur. Le général a vite démontré ses compétences de leader et a gravi les échelons de l'armée de la rébellion de manière fulgurante. 

Ces dernières années, plusieurs tentatives pour renverser l'impératrice ont toutes échoué. Le général Bushbé, aujourd'hui âgé de 42 ans, est désormais aux commandes de la rébellion et compte bien inverser cette tendance !

 
Le développement de nouveaux vaisseaux beaucoup plus performants est au cœur de sa stratégie. Ces nouveaux vaisseaux sont identifiés par un code navire unique auquel est associé le rayon d’action (aller - retour) du bâtiment calculé en année-lumière, le nombre de pilotes requis, la vitesse maximum du vaisseau exprimée en kilomètre / seconde, la taille minimum et maximum de l’équipage pour que le navire soit opérationnel ainsi que le type de mission pour laquelle le vaisseau est adapté (interception, défense, combat, transport, espionnage…).

Les pirates, experts du combat rapproché, ne sont en fait efficaces que lorsqu’ils surprennent leurs proies ; l’expansion fulgurante de l’Empire de Merise a imposé la formation de nouveaux types de pilotes, maître de la vitesse et du camouflage. Les pilotes sont maintenant répertoriés par un code de pilote unique auquel est associé nom, prénom, âge et grade (capitaine ou commandant). Les navires sont devenus si complexes qu’il est indispensable que les pilotes suivent une formation spécifique pour chaque type de mission. Un pilote ne peut diriger que des vaisseaux pour lesquels il a reçu une formation spécifique.
 

L’étendue de la flotte et des lieux d'intervention du Général Bushbé réclame aujourd’hui une classification complète des planètes sous le joug de l’Empire de Merise. Chaque planète est identifiée par un code planète unique auquel est associé le nom de la planète, le code de la galaxie ou se situe la planète. La composition générale du milieu (acide, basique, neutre), la vitesse de libération minimum pour se détacher de la gravitation planétaire (en km / s) et un attribut pour déterminer si cette planète est soumise à L'impératrice.
 
L’avènement des nouveaux vaisseaux et surtout leur vitesse a permis de limiter les informations concernant les planètes. En effet, la localisation de chaque planète se fait dorénavant en fonction de la galaxie à laquelle elle appartient. Chaque galaxie est définie à l’aide d’un code de galaxie unique auquel est associé un nom de galaxie et la distance de la galaxie au repère du Général Bushbé, celle-ci exprimée en années - lumière. Un dernier point qui a son importance : les navires ne sont pas tous adaptés aux milieux rencontrés sur les planètes, ce qui rend indispensable la connaissance du ou des milieux compatibles avec la structure du vaisseau.

Les raids du Général Bushbé ont poussé les empires non-soumis à se rallier à la rébellion. Ces alliances ont rendu les raids plus complexes. Dès lors une planification rigoureuse des missions galactiques s’est avérée essentielle. 

Depuis, chaque mission est définie par un code unique. À Chacune d’elle est associé le type de la mission (interception, défense, combat, transport, espionnage…), le nombre de vaisseaux requis pour cette mission, la vitesse minimum des bâtiments engagés et la planète qui fait l’objet d’intérêts. 
Bien entendu, il ne peut se dérouler que des missions de transport sur des planètes soumises. 
Il faut cependant noter qu'une mission n’est pas obligatoirement ciblée sur une planète. 
Ainsi, une mission peut très bien se dérouler uniquement dans l’espace.
 
Le Général Bushbé souhaite lors de chaque préparation d’une mission établir précisément la formation de la flotte de vaisseaux. Pour ce faire, il définit un planning d’engagement des navires. 

Chaque pilote est enrôlé dans une seule mission sur un vaisseau unique. Un navire ne fait partie que d’une mission à la fois pour laquelle lui est attribué le code de l’équipage embarqué ainsi que le rayon d’engagement (aller — retour) minimum souhaité. Un équipage est identifié par un code d’équipage unique, auquel est associé le nombre de pirates formant cet équipage. Un équipage embarqué sur un vaisseau, bien que composé de brutes sans scrupule, est néanmoins entrainé pour certains engagements. Les spécialités des équipages sont fondées sur les différents types de missions réalisables (interception, défense, combat, transport, espionnage…). Chaque équipage est enrôlé sur un vaisseau en fonction de la qualification requise pour cette mission …


Sergent, la rébellion compte sur vous !
