---
title: "Jeu de cartes 1"
order: 51
---

Dans ce jeu de cartes, 2 joueurs s'affrontent dans un duel. 

Les détails du fonctionnement du jeu sont peu importants ici.

Nous avons besoin d'un modèle pour stocker les différentes cartes et leurs caractéristiques.

Une carte possède les caractéristiques suivantes :

- Nom de la carte
- Puissance
- Armure
- Pouvoir

Une carte est associée à un type de cartes (Paladin, Mage, Druide, Espion...).

Un type de carte est caractérisé par un identifiant numérique, un nom de classe, une description sommaire et une énergie vitale (nature, givre, feu, lumière...). 

Chaque carte peut-être possédée par un ou plusieurs joueurs.

Un joueur peut posséder 0 ou plusieurs cartes.

Un joueur est identifié par un pseudo, un nom, un prénom et une adresse email.


# Consignes

Modéliser les éléments ci-dessus et représentez les dans un programme simple.

Pour tous les éléments ci-dessus, tous les attributs sont à minima accessibles en lecture (get).


# Partie 2 : Opérations

Les joueurs sont mis en relation via une classe que l'on nommera "Game" qui permet de lancer une nouvelle partie. Le constructeur de cette classe accepte 2 arguments de type "Joueur".
Elle dispose d'opérations permettant de lancer la partie, vérifier les scores à l'issue de chaque tour et de déclarer le vainqueur. Une classe "Round" permet de formaliser un tour de jeu. Cette classe contient 1 seule opération "fight" qui prend en paramètres 2 cartes (1 pour le joueur 1, et 1 pour le joueur 2)

Le jeu se déroule en 4 tours.




### Note
Ce TP sera réutilisé dans le module "Bases de données"
