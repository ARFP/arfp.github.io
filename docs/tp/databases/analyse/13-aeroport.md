---
title: "Aéroport"
module: "databases"
serie: "merise"
order: 12
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)

## Contexte 

Pour les besoins de la gestion d'un aéroport on souhaite mémoriser dans une base de données les informations nécessaires à la description des faits suivants : 

- Chaque avion géré est identifié par un numéro d'immatriculation. 
- Il est la propriété soit d'une société, soit d'un particulier.

Dans les deux cas on doit connaître : 
- Le nom, l'adresse et le numéro de téléphone du propriétaire, ainsi que la date d'achat de l'avion.

Chaque avion est d'un certain type, celui-ci étant caractérisé par son nom, le nom du constructeur, la puissance du moteur, le nombre de places.

La maintenance des avions est assurée par les mécaniciens de l'aéroport : 
- Par sécurité, les interventions sont toujours effectuées par deux mécaniciens (l'un répare, l'autre vérifie). 
- Pour toute intervention effectuée, on conserve l'objet de l'intervention, la date et la durée. 
- Pour chaque mécanicien on connaît son nom, son adresse, son numéro de téléphone et les types d'avion sur lesquels il est habilité à intervenir. 

Un certain nombre de pilotes sont enregistrés auprès de l'aéroport pour chaque pilote on connaît : 
- Son nom, son adresse, son numéro de téléphone, son numéro de brevet de pilote
- Les types d'avion qu'il est habilité à piloter avec le nombre total de vols qu'il a effectué sur chacun de ces types. 


*Pour vous aider à établir certaines règles, voici une série de questions types auxquelles l'application doit pouvoir répondre :*

-	Liste des avions de la société "XXX".
-	Liste des avions propriété de particuliers. 
-	Durée totale des interventions faites par le mécanicien Durand au mois d'août. 
-	Liste des avions de plus de 4 places, avec le nom du propriétaire. 
-	Liste des interventions (objet, date) faites sur l'avion numéro « 3242XZY78K3 ». 


> Validez vore travail avec vos formateurs avant de passer à la suite
