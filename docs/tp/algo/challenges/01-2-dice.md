---
title: "TP: Dice"
serie: "challenge"
order: 102
---


Vous êtes en charge de la réalisation d'un algorithme de statistiques d'un jeu de dès.

Le jeu se joue à 3 joueurs, chaque joueur démarre avec 0 point.

A chaque tour de jeu, Les joueurs lancent 2 dès chacun leur tour. Les joueurs jouent autant de tours qu'ils le souhaitent. 

Pour chaque lancer, le joueur qui a jeté les dès gagne ou perd des points selon la somme des valeurs des 2 dès:

- inférieur à 6 = 0 point
- entre 6 et 10 = +1 points
- supérieur à 10 = +3 points

Les doubles (valeur des 2 dès identiques) outrepassent les règles précédentes et font perdre 2 points au joueur.

Lorsqu'un joueur lance les dès, le résultat obtenu est enregistré (numéro joueur, score dé 1, score dé 2). 

Votre travail consiste à analyser les résultats d'une partie et retourner le score de chaque joueur. 

Un joueur ne peut avoir un score négatif.

## Consignes 

1. Développez l'algorithme répondant à la probématique ci-dessus.
2. Codez la solution dans le langage indiqué par votre formateur.

## Données

### Entrée

**game** : 

Un tableau indexé contenant entre 30 et 300 entrées anonymisées. 
Chaque élément du tableau contient une chaine de caractères contenant 3 entiers (joueur dé1 dé2) séparés par un espace.
Ces éléments du tableau sont générés aléatoirement à chaque appel de votre algorithme.

*Exemple (rappel: partie à 3 joueurs) :*
> [ '1 1 4', '2 4 3', '3 5 2', '1 3 3', '2 5 6', '3 1 5',... ]

Les données sont à charger à partir de l'url : [https://api.devoldere.net/polls/dice/](https://api.devoldere.net/polls/dice/).

Chaque appel à l'api génère une nouvelle partie.

### Sortie

Une chaine de caractères représentant les scores des 3 joueurs. 
Les 3 valeurs sont séparées par un slash ( / ). 
Le score du joueur 1 aparait en premier suivi du joueur 2 puis du joueur 3.

*Exemple :*

Pour le tableau en entrée (2 tours de jeu) :
> [ '1 3 5', '2 4 2', '3 5 2', '1 3 1', '2 5 6', '3 3 3' ]

La réponse est :
> 1/4/0

Car :

- Joueur 1: 
    - 8 = 1 point
    - 4 = 0 point
    - total = 1 point
- Joueur 2: 
    - 6 = +1 point
    - 11 = +3 points
    - total = 4 points
- Joueur 3: 
    - 7 = 1 point
    - 6 = -2 points (double)
    - total = 0 point


## Attention 

On nous signale que des pirates (non identifiés) ont peut-être compromis les données de certaines parties. 

Assurez vous de bien vérifier les valeurs des données en entrée... 

Si une partie contient une donnée invalide ou incohérente, la partie est déclarée nulle et l'algorithme renvoie la valeur "to investigate".