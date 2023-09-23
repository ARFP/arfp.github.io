---
title: "Personnages de jeu en ligne"
order: 51
---

Dans un jeu en ligne, 2 joueurs s'affrontent dans un duel. 

Les détails du fonctionnement du jeu sont peu importants ici.

Nous avons besoin d'un modèle pour stocker les différents personnages et leurs caractéristiques.

Un personnage possède les caractéristiques suivantes :

| Attribut | Type |
| --- | --- |
| nom | string |
| description | string |
| puissance | int |
| armure | int |
| pouvoir | string |

Chaque personnage appartient à une famille (Paladin, Mage, Druide, Espion...) et peut manipuler un élément (eau, air, feu, terre). 

Chaque personnage peut-être possédé par un ou plusieurs joueurs.

Un joueur peut posséder 0 ou plusieurs personnages, mais aucun en double.

Un joueur est identifié par un pseudo et une date de naissance.

On doit pouvoir connaitre l'âge d'un joueur.


# Consignes

1. Modéliser les éléments ci-dessus dans un diagramme UML.
2. Représentez 2 joueurs et 5 cartes et dans un programme simple. 
    - Chaque joueur possède 3 cartes.
3. Dans votre programme, afficher : 
    - Le pseudo, l'âge et le nombre de cartes possédées des 2 joueurs
    - Le nom, la famille et l'élément des 5 cartes.


# Partie 2 : Game

Décrivez une classe `Game` qui permet de créer une nouvelle partie. 

Le constructeur de cette classe accepte 2 arguments de type "Joueur".

La classe permet de démarrer la partie via une méthode `Demarrer()`.


1. Modéliser la classe `Game` et l'ajouter au diagramme précédent.
2. Implémenter la méthode `Demarrer()` qui se contente d'afficher : 
    - "Duel entre `Pseudo du joueur 1` et `Pseudo du joueur 2`"
    - "`Pseudo du joueur 2` possède : `lister le nom des cartes possédées`"
    - "`Pseudo du joueur 2` possède : `lister le nom des cartes possédées`"


### Note

Ce TP sera réutilisé dans le module "Bases de données"
