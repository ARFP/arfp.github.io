---
title: "Club Select"
serie: "modelisation"
order: 3
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

Un club intellectuel très "*sélect*" désire informatiser le fichier de ses membres. 

Pour chacun d'eux, outre les informations d'état-civil ordinaires, on souhaite tenir à jour les participations des candidats aux conférences organisées par le club. 

Il existe une liste de conférence avec nom, date, heure et durée. Toutes les conférences ont lieu dans les locaux du club. Chaque membre peut librement participer aux conférences. 

Pour enregistrer sa participation, il scanne son badge à l’entrée de la salle le jour de la conférence.

Par ailleurs, le recrutement du club fonctionne sous forme de parrainage : une personne ne peut rejoindre le club que s'il a été parrainé par au moins deux autres membres. On souhaite là aussi conserver l'historique, et pouvoir retrouver qui a parrainé qui et à quelle date. Certains membres n'ont cependant jamais été parrainés : ils sont qualifiés de "membres fondateurs".

**Etablir le dictionnaire des données, le MCD et le MLD adéquat.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données.

## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données du jeu d'essai suivant : 

**Membres**

| id | nom | prénom | date de naissance | adresse | email | date d'adhésion | parrain_1 | parrain_2 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | 
| 1 | Dupont |  Henri | 1950-01-01 | 1 rue du Soleil, 75001 Paris | dupont.henri@email.com | 2020-01-01 | NULL | NULL | 
| 2 | Dubois | Thomas | 1990-05-05 | 5 rue de la Concorde, 75005 Paris | dubois.thomas@email.com | 2020-05-05 | NULL | NULL | 
| 3 | Martin | Marie | 1960-02-02 | 2 avenue de la Lune, 75002 Paris | martin.marie@email.com | 2021-02-02 | 1 | 2 | 
| 4 | Durand | Pierre | 1970-03-03 | 3 boulevard des Étoiles, 75003 Paris | durand.pierre@email.com | 2022-03-03 | 1 | 3 | 
| 5 | Lefebvre | Claire | 1980-04-04 | 4 place de la République, 75004 Paris | lefebvre.claire@email.com | 2023-04-04 | 2 | 4 | 

**Conférences**

| id | nom | date | heure | durée | 
| --- | --- | --- | --- | --- |  
| 1 | L'intelligence artificielle: mythe ou réalité? | 2023-10-04 | 17h30 | 1h30 | 
| 2 | Les défis de la transition énergétique | 2023-11-15 | 20:00 | 2h00 | 
| 3 | La mondialisation: une chance ou une menace? | 2023-12-22 | 19:30 | 1h00 | 
| 4 | L'avenir de la démocratie | 2024-01-10 | 17h45 | 1h30 | 
| 5 | L'art et la technologie: une alliance possible? | 2024-02-07 | 20:00 | 2h00 | 

Compléter le fichier SQL en prenant en compte les éléments suivants :

- Les membres 1, 2 et 4 ont participé aux conférences 2 et 5.
- Les membres 1, 3 et 4 ont participé aux conférences 1 et 3.

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher les informations de tous les membres triés par date d'adhésion (le membre le plus ancien apparait en 1er)

2. Afficher le nom, prénom et email de tous les membres incluant le nombre de conférences dans lesquelles ils ont participé.

3. Afficher toutes les informations des membres fondateurs.

4. Afficher toutes les informations des conférences qui ont lieu en soirée (après 18h) et dont la durée est strictement supérieure à 1 heure.

5. Afficher le nom, prénom, date de naissance et date d'adhésion de tous les membres avec le nom et prénom du parrain 1 et l'adresse email du parrain 2. Les membres sans parrain ne doivent pas aparaitre dans les résultats.

> Valider votre travail avec vos formateurs avant de passer à la suite 
