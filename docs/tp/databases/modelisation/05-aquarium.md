---
title: "L'aquarium"
serie: "modelisation"
order: 5
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifier les règles de gestion
- Formaliser le dictionnaire des données
- Répérer les dépendances fonctionnelles
- Modéliser le diagramme *entité-association* (MCD)
- Créer le script de création de la base de données
- Créer un jeu d'essai cohérent

## Contexte 

Un aquarium souhaite gérer ses locataires. Il dispose pour cela de plusieurs bassins, répartis dans plusieurs pièces. 

Des animaux de différentes espèces sont achetés, immatriculés, et disposent d'un suivi médical personnalisé. On conserve donc la trace de la date et de la nature des soins dont ils bénéficient. Les animaux sont mélangés dans les bassins, et il arrive qu'on les déplace - là encore, on souhaite savoir à quelle date un animal donné a quitté tel bassin pour être placé dans tel autre.

Les biologistes classent les animaux selon une arborescence à quatre niveaux du plus général au particulier : ordre, famille, genre, espèce. Il va de soi que chaque animal de l'aquarium doit être correctement identifié dans cette arborescence.

**Etablir le dictionnaire des données, le MCD et le MLD adéquat.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données.


## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données d'un jeu d'essai contenant : 

- 4 bassins
- Les locataires suivants
    - 4 poissons rouge et 2 algues vertes dans le bassin N°1
    - 3 crabes et 2 poissons rouge dans le bassin N°2
    - 2 Guppy et 2 néons (ce sont des poissons) dans le bassin N°3
    - 1 escargot d'eau douce, 3 crevettes roses et 1 Betta splendens (poisson combattant) dans le bassin N°4

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Déplacer 1 poisson rouge du bassin N°1 vers le bassin N°2.

2. Déplacer 1 crabe du bassin N°3 vers le bassin N°4.

3. Afficher les locataires des bassins 1 et 3.

4. Afficher les locataires correspondant à la classe "poissons".

5. Afficher les locataires qui ont déjà été déplacés au moins 1 fois.

> Valider votre travail avec vos formateurs avant de passer à la suite 
