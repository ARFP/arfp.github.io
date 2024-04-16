---
title: "Parcours du combattant"
serie: "modelisation"
order: 5
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifier les règles de gestion
- Formaliser le dictionnaire des données
- Répérer les dépendances fonctionnelles
- Modéliser le diagramme *entité-association* (MCD)
- Réaliser le diagramme *entité-association* (MCD)
- Créer le script de création de la base de données
- Créer un jeu d'essai cohérent

## Contexte 

Une caserne militaire désire gérer les résultats des soldats lors du passage des obstacles du parcours du combattant. Dans sa carrière, un soldat va passer plusieurs fois le parcours du combattant.

Pour chaque soldat, on connait son nom, prénom, date de naissance et son grade.

A chaque fois qu’un soldat passe un obstacle, un instructeur lui attribue une note (note instructeur) dont la valeur est comprise entre 0 et 20. Si le parcours comporte 15 obstacles, l’élève recevra donc 15 notes (si l’élève ne passe pas l’obstacle, la note 0 lui est attribuée).

A chaque obstacle est attribué un niveau de difficulté. (facile, moyen, difficile …). Un bonus de points est ensuite attribué à chaque niveau (Bonus de 1 point pour les obstacles "moyens" et de 2 points pour les obstacles "difficiles").

La note finale pour le passage d’un obstacle est donc égale à : 
- *note attribuée par l’instructeur* **+** *bonus relatif à la difficulté de l’obstacle*.

Enfin, une note minimale à obtenir est définie pour chaque obstacle. Elle définit un niveau minimum à atteindre qui permet de dire à un soldat sur quels obstacles il doit axer en priorité son entraînement.

**Exemple :** 

Soit l’obstacle « Fosse » de niveau « difficile » (le bonus attribué pour ce niveau est de 2 points). La note minimale à atteindre pour cet obstacle est de 10.
Si un élève est noté 6 sur cet obstacle par l’instructeur, sa note finale sera égale à 6 + 2 = 8. On juge donc que son niveau sur cet obstacle est insuffisant et qu’il lui faut parfaire son entraînement.

Les responsables de la caserne souhaitent obtenir la liste de tous les obstacles ainsi que leur niveau de difficulté.

Ils souhaitent également obtenir la liste de toutes les notes attribuées sur chacun des obstacles.

Enfin, ils désirent avoir le récapitulatif des notes obtenues par un soldat donné pour retracer sa progression, ainsi que le temps total qu’il a mis pour effectuer un parcours complet (ainsi que les temps intermédiaires).


**Etablir le dictionnaire des données, le MCD et le MLD adéquat.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données.


## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données du jeu d'essai suivant : 

**Soldats**

| id | nom | prénom | date de naissance | grade | 
| --- | --- | --- | --- | --- | 
| 1 | Dupont |  Henri | 2000-01-01 | Seconde classe | 
| 2 | Dubois | Thomas | 1995-05-05 | Caporal | 
| 3 | Martin | Marie | 1998-02-02 | 1ère classe | 
| 4 | Durand | Pierre | 1999-03-03 | 1ère classe | 
| 5 | Lefebvre | Claire | 2001-04-04 | Seconde classe | 
| 6 | Golay | Jerry | 2001-04-08 | Seconde classe | 
| 7 | Nixon | Tiger | 1998-02-25 | 1ère classe | 

**Obstacles**

| id | nom de l'obstacle | note minimum | difficulté |
| --- | --- | --- | --- |
| 1 | Escalade du mur | 10 | Facile |
| 2 | Les chicanes | 10 | Facile |
| 3 | L'espalier | 10 | Facile |
| 4 | La poutre horizontale | 11 | Moyen |
| 5 | L'échelle de corde | 12 | Moyen |
| 6 | Le dessus-dessous | 9 | Moyen |
| 7 | La table irlandaise | 10 | Moyen |
| 8 | La fosse | 10 | Difficile |
| 9 | Les tranchées successives | 12 | Difficile |

**Ajouter ensuite les données suivantes :**

Le soldat N°1 a effectué le parcours 1 fois et a obtenu les notes suivantes (les notes obtenues correspondent à la "note instructeur" sans le bonus de difficulté) : 

| nom de l'obstacle | note instructeur obtenue | 
| --- | --- |
| Escalade du mur | 10 |
| Les chicanes | 11 |
| L'espalier | 14 |
| La poutre horizontale | 10 |
| L'échelle de corde | 13 |
| Les dessus-dessous | 11 |
| La table irlandaise | 17 |
| La fosse | 6 |
| Les tranchées successives | 11 |

Le soldat N°2 a effectué le parcours 1 fois et a obtenu les notes suivantes : 

| nom de l'obstacle | note instructeur obtenue | 
| --- | --- |
| Escalade du mur | 9 |
| Les chicanes | 9 |
| L'espalier | 11 |
| La poutre horizontale | 18 |
| L'échelle de corde | 14 |
| Les dessus-dessous | 10 |
| La table irlandaise | 0 |
| La fosse | 0 |
| Les tranchées successives | 0 |


Le soldat N°3 a effectué le parcours 1 fois et a obtenu les notes suivantes : 

| nom de l'obstacle | note instructeur obtenue | 
| --- | --- |
| Escalade du mur | 17 |
| Les chicanes | 14 |
| L'espalier | 16 |
| La poutre horizontale | 15 |
| L'échelle de corde | 15 |
| Les dessus-dessous | 12 |
| La table irlandaise | 0 |
| La fosse | 8 |
| Les tranchées successives | 11 |

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher toutes les informations des soldats triés par âge (le plus jeune aparait en 1er).

2. Le soldat N°2 refait le parcours et obtient les mêmes notes sauf pour les 3 derniers obstacles où il obtient respectivement les notes : **9**, **8** et **11**.

3. Certains soldats ont déjà fait le parcours. Pour certains des obstacles, ils n'ont pas atteint la note minimum. Afficher tous les obstacles que les soldats doivent repasser pour tenter d'améliorer leur note. Le résultat doit afficher : le nom de l'obstacle, la note minimale pour l'obstacle, le grade, nom et prénom du soldat ainsi que la meilleure note obtenue sur cet obstacle. (*Attention, la requête est plus difficile qu'elle n'y parait*).

> Valider votre travail avec vos formateurs avant de passer à la suite 