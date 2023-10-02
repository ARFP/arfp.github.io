---
title: "Mini Jeu de cartes"
serie: "projets"
order: 51
---

## INTRODUCTION 

Cet exercice vous permettra de mettre en œuvre vos compétences en développement orienté objet. 

Cet exercice peut être réalisé avec n’importe quel langage orienté objet (Java, C#, JS…). 

Nous vous recommandons de faire cet exercice en mode « console » pour bien vous concentrer sur les interactions entre les objets. 

Lorsque vous avez terminé le projet en mode « console », vous pouvez envisager de développer une interface graphique pour rendre votre jeu plus « vivant » 😊. 


## CONTEXTE 

Dans un petit jeu, 2 joueurs s'affrontent dans un duel de cartes. 


## Partie 1 : Les personnages du jeu

Le jeu propose des cartes à jouer représentant des personnages fictifs.

Un personnage possède les caractéristiques suivantes :

| Attribut | Signification | Type | Remarques
| --- | --- | --- | --- |
| nom | Nom du personnage | string | Obligatoire, unique |
| puissance | Puissance d'attaque | int | Obligatoire, supérieur à 2 |
| defense | Résistance aux attaques | int | Obligatoire, supérieur à 2 |
| pouvoir | Description du pouvoir | string | Obligatoire |

***La somme de la puissance et de la defense doit être strictement égale à 12.***

### Exercie 1.1

1. Modéliser les éléments ci-dessus dans un diagramme de classes UML.
2. Représentez les 10 cartes ci-dessous dans un programme simple. 

| Nom | Puissance | Défense | Pouvoir |
| --- | --- | --- | --- |
| Ricko | 6 | 6 | Manger une pomme | 
| Mike | 5 | 7 | Cuire un oeuf |
| Mario | 7 | 5 | Réparer sa voiture | 
| Zeldu | 4 | 8 | Chercher son Arc |
| Chief | 8 | 4 | Éplucher une patate |
| Snake | 3 | 9 | Parler aux serpents |
| Freeman | 9 | 3 | Écrire une nouvelle loi |
| Bellic | 6 | 6 | Chercher un ami |
| Drake | 7 | 5 | Boire un verre d'eau |
| Peach | 8 | 4 | Lire la doc SQL |

Au démarrage le programme affiche un résumé : 

- Le nom et le pouvoir des 10 cartes.

### Exercice 1.2 

Les personnages ont des spécificités et possèdent désormais d'autres caractérisques.

Un personnage appartient à une famille (Paladin, Mage, Gardien, Sage ou Corsaire).

Une famille manipule un élément (eau, air, feu, terre). 

1. Prenez en compte ces nouveaux éléments dans votre diagramme de classes.
2. Ajouter les 4 éléments : Air, Eau, Feu, Terre.
3. Ajouter les 5 familles de personnages ci-dessous.

| Famille | Description | Élément |
| --- | --- | --- |
| Corsaire | Les mercenaires | Eau |
| Gardien | Les gardes royaux  | Terre |
| Mage | Les magiciens | Feu |
| Paladin | Les protecteurs des cités | Terre |
| Sage | Les érudits | Air |

La famille d'un personnage est déterminé à partir de sa puissance.
- Gardien : Puissance inférieure à 5
- Sage : Puissance égale à 5
- Paladin : Puissance égale à 6
- Corsaire : Puissance égale à 7
- Mage : Puissance supérieure à 7

Au démarrage le programme affiche un résumé plus complet : 

- La famille, l'élément, le nom et le pouvoir des 10 cartes.


## Partie 2 : Les acteurs du jeu 

Les cartes étant maintenant disponibles, nous pouvons les relier à nos joueurs. 

- Un personnage peut-être possédé par plusieurs joueurs.
- Un exemplaire d'un personnage possédé par un joueur = une carte.

**Un joueur :**
- Est identifié par un pseudo et on connait sa date de naissance.
- Possède au moins 5 cartes pour pouvoir jouer, mais aucun personnage en double.

### Exercice 2.1 

Prenez en compte ces nouveaux éléments dans votre diagramme de classes.

Au démarrage du programme : 

1. Le joueur indique son pseudo et sa date de naissance.
2. Le joueur sélectionne 5 cartes parmi les 10 disponibles.
3. Le programme affiche le résumé de l'exercice 1.2.
4. Le programme affiche le pseudo et l'âge du joueur.
5. Le programme affiche les noms des cartes possédées par le joueur.

### Exercice 2.2

Le joueur seul n'a personne contre qui s'affronter en duel. Il est temps de développer une petite IA.

L'IA est en fait un joueur contrôlé par le programme. Il suffit donc de créer une instance spécifique pour ce joueur virtuel.

Au démarrage du programme : 

1. Les étapes de l'exercice précédent sont réalisées
2. Un joueur IA est créé avec le pseudo "Toto" et la date de naissance "2000-01-01".
3. 5 cartes au hasard parmi les 10 disponibles sont attribuées au joueur IA.

Le programme ne révèle pas les cartes attribuées à l'IA.


## Partie 3 : Le duel 

Nos joueurs sont prêt à s'affronter ! 

- Une partie de jeu est composée de 4 tours.
- Au début d'une partie, chaque joueur possède :
    - 12 points de vie (PV).
    - 12 étoiles (STAR).
- A l'issue des 4 tours de jeu (ou avant si l'un des joueurs n'a plus de PV), un gagnant est désigné.

### Exercice 3.1 

Modélisez et implémentez la partie de jeu.

***Déroulement d'un tour de jeu :***
1. Le joueur 1 sélectionne une de ses 5 cartes et un nombre d'étoiles
2. Le joueur 2 sélectionne une de ses 5 cartes et un nombre d'étoiles
3. Les 2 cartes sont comparées :
    - ***Attaque*** = ( `1` + `Puissance` * `Nombre d'étoiles` )
    - Celle qui possède le plus d'***Attaque*** gagne le tour.
4. Le joueur perdant le tour perd des PV :
    - ***Perte de PV*** = ( `2` + abs( `Puissance adversaire` - `Armure Joueur perdant` ))
5. Si le joueur perdant a moins de 1 PV, le partie se termine.
6. Les étoiles sélectionnées ne sont plus disponibles pour cette partie.
7. Les cartes sélectionnées ne sont plus disponibles pour cette partie.
8. Le joueur 1 devient le joueur 2 et inversement.
9. Fin du tour de jeu

***Fin de partie***

Le joueur possédant le plus de PV en fin de partie a gagné !


### Exercice 3.2

A la fin d'une partie, proposer ces 3 options : 
- Arrêter et retourner au début du programme.
- Recommencer une partie contre le même joueur IA.
- Recommencer une partie contre un nouveau Joueur IA (qui possèdera d'autres cartes).

### Exercice 3.3

Il est contraignant de devoir repasser par toutes les étapes de sélection au début du programme. 

Notre joueur souhaiterait pouvoir retrouver ses personnages lorsque qu'il relance le jeu après l'avoir fermé.

Il pourrait être une bonne idée de sauvegarder les informations d'un joueur lorsqu'il a terminé sa sélection de personnage après avoir entré son pseudo et date de naissance.

Sauvegardez ces informations dans un fichier `joueurs.json` qui sera chargé automatiquement au lancement du programme.

### Exercice 3.4

Cependant, si un autre joueur lance le jeu, il sera "identifié". 

Au lancement du programme : 
1. Le joueur entre un pseudo
2. S'il existe déjà dans la sauvegarde, le joueur correspondant est chargé (date de naissance + cartes)
3. Sinon, procéder à la création du nouveau joueur.


## Partie 4 : Autant tout mettre en JSON

Maintenant que vous savez sauvegarder les joueurs, exporter les données du jeu peut-être une bonne idée.


### Exercice 4.1 

Exporter les données du jeu (personnages, familles, éléments) dans un fichier `personnages.json` qui sera chargé au lancement du programme. Ceci permettra d'éditer les personnages sans devoir recompiler le programme.

### Exercice 4.2 

Chaque partie terminée sera également sauvegardée dans un fichier `parties.json`.

Pour chaque partie, on sauvegarde :
- La date et l'heure de début de partie.
- La date et l'heure de fin de partie.
- L'issue des 4 tours (cartes et étoiles sélectionnées, état des 2 joueurs).
- Le pseudo du gagnant de la partie.

Au démarrage du programme, et ce, pour chaque joueur, on affiche désormais son nombre de victoires.

--- 

> Valider votre travail avec vos formateurs avant d'envisager une version avec interface graphique.
