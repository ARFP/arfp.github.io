---
title: "Vidéos"
module: "databases"
serie: "merise"
order: 10
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)

## Contexte 

Dix sites de streaming vidéo (location/vente) se sont regroupés pour mettre en commun les films dont ils disposent et ont fondé un club. À la suite d'une rencontre avec les représentants de ce club, il ressort que chaque site membre du club disposera du catalogue commun relié à une base de données centrale et qu'il faudra pouvoir prendre en compte les éléments suivants : 

- Un client qui s'inscrit au club renseigne son nom et prénom et peut alimenter son compte en Euros. 
- Les films loués par un client sont accessibles 3 jours depuis n'importe quel site membre.
- Plusieurs vidéos peuvent contenir le même film (version différentes).
- Un film est rattaché à un ou plusieurs genres cinématographique (nom et type de public) et est caractérisé par sa durée, son réalisateur et la liste des acteurs principaux.
- Une location n'est permise que si le client dispose assez de fonds sur son compte.
- La consultation d'un client permettra d'obtenir son nom, prénom, solde du compte, son nombre de location en cours, la liste des vidéos qu'il a actuellement loués avec la position de lecture actuelle.
- La consultation d'un genre permettra d'obtenir la liste des films de ce genre disponibles dans le catalogue.
- Périodiquement, on veut obtenir une liste de remboursement ; on veut pour chaque vidéo louée et non-lue dans le délai de 3 jours : 
    - Nom du client, date de l'emprunt, identifiant et titre du (des) vidéo(s) concerné(s).


> Validez vore travail avec vos formateurs avant de passer à la suite
