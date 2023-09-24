---
title: "Tableaux #2"
level: 4
order: 5
---

# Partie 5

Cette partie vous permettra de renforcer les notions suivantes : 
- Les notions des parties précédentes
- Les tableaux


## Exercice 5.1 : Rechercher un nombre dans un tableau

Soit un tableau de nombres entier triés par ordre croissant.

Exemple: `[8, 16, 32, 64, 128, 256, 512]`

Chercher si un nombre donné `N` figure parmi les éléments. 

Si oui, afficher la valeur de l'indice correspondant. Sinon, afficher « Nombre non trouvé ».


## Exercice 5.2 : Rechercher le nombre d'occurences d'une lettre dans une phrase

Soit une chaîne de caractères terminée par le caractère « . ». 

Donnez l'algorithme d'un programme qui compte le nombre d'occurrences d'une lettre donnée ("a" par exemple) dans cette chaîne. 

Si la chaîne de caractères est vide ou n'est composée que d'un caractère « . », le message "LA CHAINE EST VIDE" sera affiché.

Proposez un jeu d'essai prévoyant les 3 cas suivants :
- La phrase est vide
- La lettre n'est pas présente
- La lettre est présente une ou plusieurs fois


## Exercice 5.3 : Dénombrer les lettres de l'alphabet dans un tableau 

Lire un texte d'au moins 120 caractères (à contrôler). 

Compter et afficher le nombre d'occurrences (d'apparitions) de chacune des lettres de l'alphabet.


## Exercice 5.4 : Tri d'un tableau 

Nous désignerons par `a1`, `a2`, ..., `aN` les éléments d'un tableau à trier par ordre croissant.

Exemple: `[128, 64, 8, 512, 16, 32, 256]`

On commence par chercher l'indice du plus petit des éléments, soit `j` cet indice. 

On permute alors les valeurs de `a1` (128) et `aj` (8).

Le tableau devient `[8, 64, 128, 512, 16, 32, 256]`.

On cherche ensuite l'indice du plus petit des éléments entre `a2` et `aN` et on permute avec `a2`.

Le tableau devient `[8, 16, 128, 512, 64, 32, 256]`.

On cherche ensuite l'indice du plus petit des éléments `a3`, `a4`, ..., `aN` etc... 


## Exercice 5.5 : Palindrome 

Un palindrome est une chaîne de caractères que l'on peut lire identiquement de droite à gauche, et gauche à droite.

Par exemple:
- AA
- 38783
- LAVAL
- LAVAL A ETE A LAVAL
- ET LA MARINE VA VENIR A MALTE

L'utilisateur saisit une chaîne de caractères terminée par un point `.` (à contrôler).

Ecrivez l'algorithme et le programme permettant d'affirmer si cette phrase est ou non un palindrome.

Si la chaîne de caractères n'est composée que du caractère '.', l'utilisateur est invité à recommencer.

L'algorithme doit prévoir les 3 cas suivants :
- la phrase est vide
- la chaîne de caractères n'est pas un palindrome
- la chaîne de caractères est un palindrome


> Validez votre travail avec votre formateur avant de passer à la suite.
