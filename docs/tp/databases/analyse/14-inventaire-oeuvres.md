---
title: "Inventaire des œuvres d'art"
module: "databases"
serie: "analyse"
order: 14
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)

## Contexte 

Les musées d'art veulent constituer une base de données commune des œuvres d'art qu'ils possèdent. 

Actuellement le conservateur de chaque musée garde, pour chaque œuvre, les informations suivantes : 
-	Type (peinture, collage, sculpture, lithographie, etc…).
-	Titre.
-	Année.
-	Nom de(s) artiste(s).
-	Matière(s).
-	Dimensions.
-	Courant artistique (impressionnisme, cubisme, etc.) auquel elle appartient s'il est défini (certaines œuvres sont inclassables).
-	Et éventuellement le numéro de l'exemplaire possédé par le musée (certains types d'œuvres comme les lithographies et les sculptures en bronze sont tirées en plusieurs exemplaires, le musée ne possède alors pas l'œuvre, mais tel exemplaire de l'œuvre). 

En plus, certains conservateurs se sont constitués des fiches techniques décrivant : 

- Les principaux courants artistiques : 
    - Nom du courant, période (année de début, année de fin)
- Texte descriptif.
- Les artistes : 
    - Nom, prénom, nationalité, date de naissance, éventuellement date de décès
    - Les courants auxquels ils ont participé par ses œuvres


Ils veulent aussi mettre ces fiches en commun dans la base de données. 

Cette base de données devra permettre de répondre à des questions du type : 

- Où est telle œuvre de tel(s) artiste(s) (nom, ville du musée) ? 
- Dans le cas d'une œuvre à exemplaires : 
    - Liste des musées conservant un exemplaire de l'œuvre.
- Liste (titre, année) des œuvres crées par tel artiste. 
- À quels courants a participé tel artiste ? 
- Où sont les œuvres de tel courant artistique (nom, ville du musée) ? 
- Liste des titres et des noms de(s) artiste(s) des œuvres d'un musée.
- Renseignements sur tel artiste (information sur l'artiste et liste de ses œuvres).
- Renseignements sur tel courant artistique (artistes, descriptif…). 


> Validez vore travail avec vos formateurs avant de passer à la suite
