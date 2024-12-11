---
title: "Structures itératives"
level: 4
order: 3
---

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Les notions des parties précédentes
- Les boucles 

## Exercice 3.1 : La bonne plage de sable

Écrire un algorithme qui demande à l’utilisateur de saisir un nombre compris entre 1 et 3 jusqu’à ce que la réponse convienne.

Lorsque la réponse convient, afficher le nombre saisi suivi de "Bravo, vous avez réussi !".

## Exercice 3.2 : La bonne plage de galets

Écrire un algorithme qui demande un nombre compris entre 10 et 20, jusqu’à ce que la réponse convienne. 

En cas de réponse supérieure à 20, on fera apparaître un message : « Plus petit ! », et inversement, « Plus grand ! » si le nombre est inférieur à 10.

Lorsque la réponse convient, afficher le nombre saisi suivi de "Yes, you did it !".


## Exercice 3.3 : Les nombres suivants

Écrire un algorithme qui demande un nombre de départ, et qui ensuite affiche les dix nombres suivants. 

Par exemple, si l'utilisateur saisit le nombre **17**, le programme affichera : 

`Les 10 nombres après 17 sont: 18, 19 ,20 ,21 ,22 ,23 ,24 ,25 ,26 ,27`

Écrire cet algorithme dans un premier temps avec une boucle **tant que**, puis écrivez une 2nde version avec une boucle **pour**.


## Exercice 3.4 : La somme

Écrire un algorithme qui demande un nombre de départ, et qui calcule et affiche la somme des entiers jusqu’à ce nombre. 

Par exemple, si l'utilisateur saisit le nombre  **5**, le programme doit afficher : 

`La somme des nombres jusque 5 est: 15` 

NB : on souhaite afficher uniquement le résultat, pas la décomposition du calcul.


## Exercice 3.5 : La factorielle

Écrire un algorithme qui demande à l'utilisateur de saisir un nombre, et qui calcule et affiche sa factorielle. 

Par exemple, si l'utilisateur saisit le nombre  **8**, le programme doit afficher : 

`La factorielle de 8 est: 40320` 

NB : la factorielle de **8**, notée `8!`, vaut **1 x 2 x 3 x 4 x 5 x 6 x 7 x 8**


## Exercice 3.6 : Et le plus grand est...

Érire un algorithme qui demande successivement 20 nombres à l’utilisateur, et qui lui inqique ensuite quel est le plus grand parmi ces 20 nombres.

Exemple de fonctionnement du programme : 

```
Entrez le nombre numéro 1 : 12
Entrez le nombre numéro 2 : 14
etc...
Entrez le nombre numéro 20: 6

Résultat : 
Le plus grand des nombres saisis est : 14.
14 était le nombre numéro 2.
```


## Exercice 3.7 : Et le plus grand est... encore.

Réécrire l’algorithme précédent, mais cette fois-ci on ne connaît pas d’avance combien l’utilisateur souhaite saisir de nombres. La saisie des nombres s’arrête lorsque l’utilisateur entre un zéro.

## Exercice 3.8 : Paiement et rendu monnaie

Écrire un algorithme qui demande à l'utilisateur de saisir des prix en € (nombre à 1 décimale) correspondant aux achats d'un client. Lorsque l'utilisateur saisit le nombre `0`, on estime que la saisie est terminée. Le programme calcule et affiche la somme totale à payer.

On estime que le client paie uniquement avec des billets de 5€.

Afficher ensuite : 
- Le nombre de billets de 5€ qu'il doit donner pour payer la somme dûe.
- La somme à rendre par le magasin
- La répartition optimale des billets / pièces à rendre au client (pièces disponibles : 0.10€ 0.20€, 0.50€, 1€, 2€).


Exemple : 

```
Saisir un prix : 12.5
Saisir un prix : 9.3
Saisir un prix : 15.9
Saisir un prix : 0

Le client doit payer : 37.70 Euros.
Le client doit donner 8 billets de 5 Euros soit 40 Euros.
Rendu monnaie : 2.30 Euros
Répartition de la monnaie à restituer au client : 
- 1 pièce de 2 Euros
- 1 pièce de 0.20 Euros
- 1 pièce de 0.10 Euros
```


## Exercice 3.9 : Les courses

Écrire un algorithme qui permet de connaître ses chances de gagner au tiercé, quarté, quinté et autres impôts volontaires. 

On demande à l’utilisateur le nombre de chevaux partants, et le nombre de chevaux joués. Les deux messages affichés devront être : 

```
Dans l’ordre : une chance sur X de gagner 
Dans le désordre : une chance sur Y de gagner 
```

`X` et `Y` nous sont donnés par la formule suivante:  si `n` est le nombre de chevaux partants et `p` le nombre de chevaux joués (le signe `!` signifie « factorielle ») :

```
X = n! / (n - p)! 
Y = n! / (p! * (n – p)!)
```

Cet algorithme peut être écrit d’une manière simple, mais relativement peu performante. Ses performances peuvent être singulièrement augmentées par une petite astuce. Vous commencerez par écrire la manière la plus simple, puis vous identifierez le problème, et écrirez une deuxième version permettant de d'améliorer les performances de l'algorithme.



> Validez votre travail avec votre formateur avant de passer à la suite.