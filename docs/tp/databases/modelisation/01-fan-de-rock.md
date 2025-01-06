---
title: "Fan de Rock"
module: "databases"
serie: "modelisation"
order: 1
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)
- Créer le script de création de la base de données
- Créer et insérer un jeu d'essai cohérent
- Implémentez les requêtes SQL demandées

## Contexte 

Un fan de rock souhaite créer un site consacré à ses groupes préférés. Il doit donc tenir l'inventaire des disques, avec pour chacun d'eux le titre, l'artiste, le label et l'année. En ce qui concerne les groupes et les musiciens, une analyse fine montre que le problème est redoutable - on se contentera ici d'une approche simple.

On traitera successivement deux hypothèses :
-	La discothèque ne comprend que des albums (aucune compilation de différents artistes)
-	La discothèque comprend des albums ainsi que des compilations de différents artistes


**Etablir le dictionnaire des données, le MCD et le MLD pour les 2 deux cas.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données pour le cas N°2.


## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données du jeu d'essai contenant :

- **3 albums**
    1. Santa : *999*
    2. Billy Paul : *Live in europe*
    3. Francis Cabrel : *Vise le ciel*
- **2 compilations**
    - NRJ Hit Music Only 2024
        - Artistes:  Dua Lipa, David Guetta, Loreen, Inigo Quintero, Teddy Swims, Dadju, Jason Derulo, Santa, Francis Cabrel.
    - Italian Rare Groove
        - Artistes : Ennio Morricone, Piero Piccioni, Goblin, Riz Ortolani

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher tous les albums

2. Afficher tous les artistes triés par nom et par ordre décroissant

3. Afficher les compilations avec le nombre d'artistes qui y participent

4. Afficher les artistes qui apparaissent dans au moins 1 album **et** au moins 1 compilation

> Valider votre travail avec vos formateurs avant de passer à la suite 
