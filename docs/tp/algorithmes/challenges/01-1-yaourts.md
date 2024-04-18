---
title: "TP: Yaourts"
serie: "challenge"
order: 101
---


Vous êtes en charge de la réalisation d'un algorithme d'analyse d'une étude marketing sur l'emballage d'un nouveau yaourt bio issu de circuits courts. 
Vous recevez à ce titre les résultats d'une étude où des consommateurs indiquent la couleur qu'ils préfèrent pour l'emballage. 
Vous décidez de présenter les 2 couleurs les plus demandées à votre client.

## Consignes 

1. Développez l'algorithme répondant à la probématique ci-dessus.
2. Codez la solution dans le langage indiqué par votre formateur.

## Données

### Entrée

**Colors** : 

Un tableau indexé contenant entre 500 et 5000 entrées. 
Chaque élément du tableau correspond à la couleur choisie par une personne interrogée.
Ces éléments du tableau sont générés aléatoirement à chaque appel de votre algorithme.

*Exemple :*
> [ 'rouge', 'jaune', 'bleu', 'jaune', 'rouge', 'jaune' ]

Les données sont à charger à partir de l'url : [https://api.devoldere.net/polls/yoghurts/](https://api.devoldere.net/polls/yoghurts/).

Chaque appel à l'api génère un nouveau vote.

### Sortie

Une chaine de caractère représentant les deux couleurs préférées. 

Les 2 valeurs sont séparées par un espace. 

La couleur la plus populaire doit apparaître en premier.

S'il y a 2 couleurs ex-aequo, la couleur qui apparait en 1er dans le tableau d'entrée est considérée la plus populaire !


**Exemple 1 :**

Pour le tableau en entrée :

`[ 'rouge', 'jaune', 'bleu', 'jaune', 'rouge', 'jaune' ]`

La réponse est : "`jaune rouge`"

Car le jaune a obtenu 3 votes, le rouge 2 votes et le bleu 1 vote.


**Exemple 2 :**

Pour le tableau en entrée :

`[ 'rouge', 'jaune', 'bleu', 'jaune', 'bleu', 'rouge', 'jaune' ]`

La réponse est : "`jaune rouge`"

Car le jaune a obtenu 3 votes.

le rouge et le bleu ont 2 votes.
- Le rouge apparait en 1er dans le tableau
- Le rouge l'emporte sur le bleu

