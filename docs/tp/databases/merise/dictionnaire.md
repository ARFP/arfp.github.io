---
title: "Exercices : Dictionnaire des données"
layout: default
module: "databases"
serie: "merise"
order: 10
---

Cette série d’exercices peut être réalisée dans les contextes suivants :

- Se familiariser avec l'analyse d'un domaine existant.
- Rédiger un dictionnaire des données

Vous vous aiderez des supports d'apprentissage fournis par vos formateurs.

**Pour chaque exercice de cette série :**

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données


## 1. Plages 

**Réalisez le dictionnaire des données correspondant à la description ci-dessous.**

Une région voyant son activité touristique grandir, souhaite mettre en place une structure permettant de suivre l'état de ses plages.

Dans un premier temps, elle souhaite connaître toutes ses plages :
-	Chaque plage appartient à une ville
-	Pour une plage, on connaîtra :
-	Sa longueur en km
-	La nature du terrain : sable fin, rochers, galets, ... sachant qu'il peut y avoir des plages avec sable et rochers

Le suivi se fera par département (uniquement les départements de la région) : 
-	Un responsable région sera nommé : on en connaitra son nom et son prénom.
-	Une ville est identifiée par son code postal et le nombre de touristes annuel qu'elle reçoit doit être connu.


## 2. Bibliothèque

**Réalisez le dictionnaire des données correspondant à la description ci-dessous.**

La Bibliothèque d'un syndicat intercommunal consiste en plusieurs points de prêt. 
Ces centres disposent d'ordinateurs personnels interconnectés qui doivent permettre de gérer les emprunts.

L'interview des bibliothécaires permet de déterminer les faits suivants : 

-	Un client qui s'inscrit à la bibliothèque verse une caution. 
-	Suivant le montant de cette caution il aura le droit d'effectuer en même temps de 1 à 10 emprunts.
-	Les emprunts durent au maximum 8 jours.
-	Un livre est caractérisé par son numéro dans la bibliothèque (identifiant), son éditeur et son (ses) auteur(s).
-	On veut pouvoir obtenir, pour chaque client les emprunts qu'il a effectués (nombre, numéro et titre du livre, date de l'emprunt) au cours des trois derniers mois.
-	Toutes les semaines, on édite la liste des emprunteurs en retard : nom et adresse du client, date de l'emprunt, numéro(s) et titre du (des) livre(s) concerné(s).
-	On veut enfin pouvoir connaître pour chaque livre sa date d'achat et son état. 


## 3. Grand-Prix (avancé)

**Réalisez le dictionnaire des données correspondant à la description ci-dessous.**

Votre société a pour mission d'informatiser la gestion du "Grand Prix" d'athlétisme. Ce grand prix a lieu tous les ans ; Il permet de désigner le meilleur athlète masculin et la meilleure athlète féminine de l'année. Chacun de ces deux gagnants reçoit en récompense une somme d'argent ainsi que des lots tels que voitures, voyages… le tout étant financé par des sponsors. 
Pour désigner les deux vainqueurs, dix rencontres d'athlétisme sont choisies sur l'année (rencontre d'athlétisme de Paris, de Francfort…). Les athlètes désirant concourir dans ce "Grand Prix" doivent participer à ces rencontres dans leur(s) spécialité(s). Leur classement leur permet de marquer des points. Les deux gagnants sont les athlètes ayant accumulé le plus grand nombre de points pour une discipline tout au long des meetings organisés. 


### Les différentes tâches à prendre en compte sont :

1.	Lorsqu'une fédération sportive se fait connaître auprès du comité du "Grand Prix", elle est enregistrée si elle reçoit l'agrément.

2.	Dès qu'un changement est connu sur les informations concernant une fédération, la mise à jour de ces informations est réalisée.

3.	En début de chaque année sportive, une sélection des stades pouvant prétendre à l'organisation des épreuves est effectué par le comité du "Grand Prix", au vu des possibilités d'hébergement et des moyens de transports.

4.	Après sélection, les rencontres d'athlétisme retenues sont enregistrées : épreuves proposées, contexte des épreuves…

5.	Les athlètes désireux de s'inscrire au "Grand Prix" envoient un bulletin d'inscription au comité qui les accepte ou les invalident. Pour les invalidés, il y a un courrier de refus.

6.	Chaque athlète dont la participation est acceptée, est enregistré et reçoit une carte d'agrément ainsi qu'un dossier sur les rencontres auxquelles il est inscrit d'office. Ce dossier contient les dates et lieux des rencontres ainsi que les modalités du séjour.

7.	Quinze jours avant le début d'une rencontre d'athlétisme, le planning de déroulement des épreuves est décidé, envoyé au comité du "Grand Prix" qui l'enregistre.

8.	Jusqu'au commencement des épreuves, le planning de la rencontre peut être modifié.

9.	Les forfaits des athlètes pour une épreuve sont enregistrés dès que connu. Ils peuvent se désister jusqu'au départ de l'épreuve.

10.	La veille du déroulement d'une rencontre d'athlétisme, les athlètes sont affectés aux différentes épreuves initiales pour leur(s) discipline(s). Exemple : si trente athlètes se sont inscrits pour le 100 mètres homme, il y aura quatre quart de finale de huit concurrents.

11.	Selon le classement d'un athlète sur une série, il est affecté pour suivante ou éliminé de la compétition. 
Exemple : sur les huit athlètes participant au quart de finale du 100 mètres homme, les quatre meilleurs temps sont sélectionnés pour le demi final, les quatre autres sont éliminés.

12.	Selon le classement final de chaque athlète (c'est à dire que toutes les épreuves ont eu lieu), il y a attribution de points pour le classement final du "Grand Prix".

13.	Lorsque toutes les rencontres ont eu lieu, il y a nomination des vainqueurs selon le total des points acquis tout au long du "Grand Prix". 

14.	Lorsqu'un record a été battu, il est homologué c'est à dire qu'il y a enregistrement du nouveau record avec la date et le lieu du record.

 
### Un certain nombre de règles sont fixées pour le déroulement du "Grand Prix". 

**Les principales sont :**

1)	Pour s'inscrire à une rencontre d'athlétisme ou meeting, un athlète doit faire partie d'une fédération sportive.

2)	Si un Athlète déclare forfait pour un meeting ou une épreuve, il n'est pas exclu du grand prix.

3)	Un athlète peut s'inscrire dans plusieurs disciplines. Exemple : le 100 m hommes et le saut en longueur.

4)	Chaque rencontre d'athlétisme organisée a l'obligation d'ouvrir des épreuves pour chacune des disciplines prévues au "Grand Prix".

5)	Certaines disciplines n'ont qu'une épreuve. Exemple : le saut en longueur se dispute en une épreuve avec pour chaque athlète trois sauts de qualification. Les huit meilleurs participent aux finales c'est à dire qu'ils ont trois sauts supplémentaires pour améliorer leurs performances.

6)	D'autres disciplines se déroulent sur plusieurs épreuves appelées "séries". Exemple : Le 100 mètres hommes peut avoir des quarts de finales suivies de demi-finales puis d'une finale en fonction du nombre d'inscrits au départ.

7)	Le nombre de points acquis par un athlète dépend de la place occupée au classement finale d'une épreuve.

8)	Un nombre de points supplémentaires est attribué en cas de record du monde battu dans une des rencontres du "Grand Prix".

9)	Pour chaque discipline, un record qu'il soit de niveau mondial ou européen, n'est enregistré qu'après homologation ceci avec la date réelle de l'établissement du record.

10)	Selon la place qu'il occupe en fin d'une série, un athlète est automatiquement inscrit dans la série suivante ou éliminé.

11)	Dans l'épreuve du Décathlon (hommes) ou de l'Heptathlon (femmes), il y a plusieurs disciplines (dix ou sept) auxquelles les athlètes doivent participer. Chacune de ces disciplines est regroupées dans une discipline décathlon ou heptathlon.

12)	Certaines épreuves comportent un maximum de participants. D'autres n'ont pas de limites. Exemple : le 100 mètres homme a un maximum de 8 participants lié au nombre de couloirs sur la piste, par contre le saut à la perche n'a pas ce type de contrainte.
