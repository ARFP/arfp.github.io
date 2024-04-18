---
title: "Concours de menuiserie"
serie: "modelisation"
order: 8
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifier les règles de gestion
- Formaliser le dictionnaire des données
- Répérer les dépendances fonctionnelles
- Modéliser le diagramme *entité-association* (MCD)
- Créer le script de création de la base de données
- Créer un jeu d'essai cohérent

## Contexte 

Une école désire gérer la participation de ses apprentis à divers concours de menuiserie. Chaque apprenti est encadré par un tuteur de l’école.

Dans chaque concours, l’apprenti doit réaliser un objet qu’il choisit lui-même. Le jury accorde toujours un nombre de points qui permet d’établir le classement (si 2 apprentis ont le même nombre de points, ils sont ex-æquo).

On désire connaître les concours auxquels ont participé les apprentis, l’objet réalisé, la place et le nombre de points qu’ils ont obtenus (NB : pour la place, on ne gère que les apprentis de l’école).

Les informations collectées sont :

- nom de l’apprenti
- prénom de l’apprenti
- nom du tuteur
- prénom du tuteur
- nom du concours
- lieu du concours
- dotation globale du concours
- date du concours
- nombre de points obtenus
- place obtenue
- nom objet réalisé


**Etablir le dictionnaire des données, le MCD et le MLD adéquat.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données.


## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données du jeu d'essai contenant :

- **9 apprentis** (identifiées de 1 à 9)
- **3 tuteurs** (identifiés de 1 à 3)
- **Associer chaque tuteur avec 3 apprentis**
    - Le Tuteur n°1 est associé aux apprentis N° 1, 2 et 3
    - Le Tuteur n°2 est associé aux apprentis N° 4, 5 et 6
    - Le Tuteur n°3 est associé aux apprentis N° 7, 8 et 9
- **2 concours** 
    1. Concours national des menuisiers à Paris le 24/03/2024
        - Pièce à réaliser : *Un Rocking Chair en Pin*
    2. Compétition mondiale de la menuiserie à Lyon le 11/04/2024
        - Pièce à réaliser : *Un Cartel en Noyer ciré* (encadrement de pendules)
- **Associer les apprentis du tuteur N°1 au concours N°1**
- **Associer les apprentis du tuteur N°3 au concours N°2**
- **Associer l'apprenti N°3 au concours N°2**
- **Attribuer une note comprise entre 0 et 20 pour les pièces réalisées par les apprentis lors des concours**


> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher tous les apprentis triés par nom de famille et par ordre croissant.

2. Afficher les tuteurs avec le nombre d'apprentis qu'ils suivent.

3. Afficher les apprentis qui participent à au moins 1 concours avec, pour chaque apprenti le nom du concours auquel il participe.

4. Afficher tous les apprentis avec, pour chaque apprenti le nom du concours auquel il participe. Si l'apprenti ne participe à aucun concours, afficher la valeur `NULL` à la place du nom du concours.

5. Afficher tous les concours avec, pour chaque concours, le nombre d'apprentis inscrits ainsi que la meilleure note obtenue.

> Valider votre travail avec vos formateurs avant de passer à la suite 
