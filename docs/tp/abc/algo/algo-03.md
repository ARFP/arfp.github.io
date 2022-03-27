---
layout: module
title: "Algorithmes : Exercices partie 3"
module: "abc"
serie: "algo"
order: 3
---

# Partie 3

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Toutes les notions des parties précédentes
- Les tableaux


## Exercice 3.1 : Jeu de la fourchette

1. L'ordinateur « choisit » aléatoirement un nombre mystère (entier compris entre 0 et 100). 
2. Le joueur essaie de le deviner. 

Lors de chaque essai, l'ordinateur affiche la « fourchette » dans laquelle se trouve le nombre qu'il a choisi. 

Le choix du nombre mystère sera simulé par génération d'un nombre aléatoire : `N <-- RANDOM(0,100)`.

Lorsque l'utilisateur a trouvé le nombre mystère, le programme affiche : 
 - `Bravo vous avez trouvé en X essais`.


## Exercice 3.2 : Barnabé fait ses courses

Barnabé fait ses courses dans plusieurs magasins.

Dans chacun, il dépense 1 € de plus que la moitié de ce qu’il possédait en entrant. 

Dans le dernier magasin, il dépense le solde.

Barnabé dépense au moins 1 € dans chaque magasin.

Représenter l’algorithme permettant de trouver le nombre de magasins dans lesquels il a acheté.


## Exercice 3.3 : Rechercher un nombre dans un tableau

Soit un tableau de nombres entier triés par ordre croissant.

Exemple: `[2, 5, 9, 11, 42, 128, 256]`

Chercher si un nombre donné `N` figure parmi les éléments. 

Si oui, afficher la valeur de l'indice correspondant. Sinon, afficher « 404 Not found ».


## Exercice 3.4 : Rechercher une lettre dans une phrase

Soit une chaîne de caractères terminée par le caractère « . ». 

Donnez l'algorithme d'un programme qui compte le nombre d'occurrences d'une lettre donnée ("a" par exemple) dans cette chaîne. 
Si la chaîne de caractères est vide ou n'est composée que du caractère « . », le message "LA CHAINE EST VIDE" sera affiché.

Proposez un jeu d'essai prévoyant les 3 cas suivants :
- La phrase est vide
- La lettre n'est pas présente
- La lettre est présente une ou plusieurs fois

> Validez votre travail avec votre formateur avant de passer à la suite.