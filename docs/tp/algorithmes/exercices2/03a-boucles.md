---
title: "Les Boucles  #2"
level: 4
order: 3
serie: "exercices2"
---

# Partie 3a

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Les notions des parties précédentes
- Les boucles 

## Exercice 3a.1 : Contrôler la saisie

L'utilisateur est invité à saisir son prénom.

Le programme affiche ensuite "Bonjour" suivi du prénom saisi.

Le prénom doit contenir au moins 2 caractères.

Si le prénom contient moins de 2 caractères, l'utilisateur doit recommencer la saisie. 

L'utilisateur dispose d'un nombre d'essai illimité.


## Exercice 3a.2 : Contrôler la saisie avec limite

L'utilisateur est invité à saisir un mot de passe.

Si le mot de passe saisi est correct, le programme affiche "Vous êtes connecté".

Dans le cas contraire, l'utilisateur doit recommencer la saisie.

L'utilisateur dispose de 3 essais maximum. 

Au 3ème échec, le programme affiche "Votre compte est bloqué" et se termine.

Note : Le bon mot de passe est *formation*


## Exercice 3a.3 : Intervalle entre 2 nombres.

Lire 2 nombres entier `A` et `B` puis afficher tous les nombres entier dans l'intervalle.

```
Exemples : 
A = 3
B = 7
Résultat = 4 5 6

A = 7
B = 3
Résultat = 6 5 4
```


## Exercice 3a.4 : Recherche des diviseurs d'un nombre.

Lire un nombre entier et afficher tous ses diviseurs autres que 1 et lui-même.

Aide : [https://www.mathematiquesfaciles.com/nombres-premiers-multiples-diviseurs_2_41090.htm](https://www.mathematiquesfaciles.com/nombres-premiers-multiples-diviseurs_2_41090.htm)


## Exercice 3a.5 : Nombre premier

Lire un nombre `N` et déterminer s’il est un nombre premier. 

Un nombre premier n'est divisible que par 1 et par lui-même.


## Exercice 3a.6 : Jeu de la fourchette

1. L'ordinateur « choisit » aléatoirement un nombre mystère (entier compris entre 0 et 100). 
2. Le joueur essaie de le deviner. 

Lors de chaque essai, l'ordinateur affiche la « fourchette » dans laquelle se trouve le nombre qu'il a choisi. 

Le choix du nombre mystère sera simulé par génération d'un nombre aléatoire : `N <-- RANDOM(0,100)`.

Lorsque l'utilisateur a trouvé le nombre mystère, le programme affiche : 
 - `Bravo vous avez trouvé en X essais`.


## Exercice 3a.7 : Barnabé fait ses courses

Barnabé fait ses courses dans plusieurs magasins.

Dans chacun, il dépense 1 € de plus que la moitié de ce qu’il possédait en entrant. 

Dans le dernier magasin, il dépense le solde.

Soit la somme `S` dont il disposait au départ (S > 1 €).

Représenter l’algorithme permettant de trouver le nombre de magasins dans lesquels il a acheté.


> Validez votre travail avec votre formateur avant de passer à la suite.