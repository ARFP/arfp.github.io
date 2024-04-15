---
title: "TP: Twisted"
serie: "challenge"
order: 103
---


Vous êtes en charge de la réalisation d'un algorithme de statistiques d'un tournoi de dès sponsorisé par un producteur de yaourts qui souhaite lancer un nouveau yaourt Bio au fruits : "BioYourt".

### *Le tournoi*

Le tournoi réunit 20 joueurs et se déroule en plusieurs tours de jeu. 

Chaque joueur est identifié par un numéro (de 1 à 20) et démarre avec 0 point.

A chaque tour de jeu, Les joueurs lancent 3 dès chacun leur tour.  

A chaque lancer, le joueur gagne des points selon son score aux dès (somme de la valeur des 3 dès):

- inférieur ou égal à 6 = 1 point 
- supérieur ou égal à 12 = 2 points 
- strictement égal à 3 ou à 18 = 3 points 

A chaque fois qu'un joueur réalise un double (valeurs d'au moins 2 dés identiques), une couleur est sélectionnée au hasard parmi une liste pré-établie.

Le tournoi se termine lorsque chaque joueur a lancé les dès 20 fois.

### *Les statistiques* 

A la fin du tournoi, 

- Le joueur possédant le plus de points gagne 6000€ de bons d'achat de BioYourt. 
Si plusieurs joueurs sont 1er ex-aequo, le lot est partagé (2 gagnants = 3000€ chacun ; 3 gagnants = 2000€ chacun etc..).

- La couleur la plus populaire parmi les couleurs tirées au sort servira de base pour le design du logo du nouveau yaourt BioYourt.


## Consignes 

1. Développez l'algorithme répondant à la probématique ci-dessus.
2. Codez la solution.

Dans le langage indiqué par votre formateur, vous devez créer une classe dont le constructeur accepte 2 tableaux indexés: 
- Le 1er contenant les scores de chaque tour de jeu 
- Le 2nd contenant la liste des couleurs sélectionnables

Cette classe contient 3 méthodes publiques: 
- **getWinners()** qui retourne une chaine contenant le(s) numéro(s) du (des) gagnant(s)
- **getPrizeValue()** qui retourne la valeur du bon d'achat du ou des gagnants 
- **getColor()** qui retourne la couleur la plus populaire


## Données

### Entrée

**tournament** : 
Un tableau indexé contenant les différents lancers de dès de jeu. 
Chaque élément du tableau contient un tableau contenant 20 entrées (1 par joueur).
Ces entrées contiennent une chaine de caractère contenant 3 entiers séparés par un espace.
Format: "id_joueur score_de1 score_de2 score de3

**colors** : 
*Exemple (rappel: partie à 3 joueurs) :*
> [ '1 1 4', '2 4 3', '3 5 2', '1 3 3', '2 5 6', '3 1 5',... ]

### Sortie

Une chaine de caractère représentant les scores des 3 joueurs. 
Les 3 valeurs sont séparées par un slash ( / ). 
Le score du joueur 1 aparait en premier suivi du joueur 2 puis du joueur 3.

*Exemple :*

Pour le tableau en entrée :
> [ '1 1 4', '2 4 2', '3 5 2', '1 3 1', '2 5 6', '3 3 3' ]

La réponse est :
> 2/7/0

Car :

- Joueur 1: 
    - 5 = -1 point
    - 4 = +3 points
    - total = 2 points
- Joueur 2: 
    - 6 = +2 points
    - 11 = +5 points
    - total = 7 points
- Joueur 3: 
    - 7 = -1 point
    - 6 = -2 points (double)
    - total = 0 point


### Attention 

On nous signale que des pirates (non identifiés) ont peut-être compromis les données de certaines parties. 

Assurez vous de bien vérifier les valeurs des données en entrée... 

Si une partie contient une donnée invalide ou incohérente, la partie est déclarée nulle et l'algorithme renvoie la valeur "to investigate".