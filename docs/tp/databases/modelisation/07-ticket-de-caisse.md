---
title: "Ticket de caisse"
serie: "modelisation"
order: 7
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

Au café : nous souhaitons enregistrer les données qui apparaissent sur le ticket de caisse d’un café.

**Liste des données à enregistrer :**

1. identifiant du serveur
2. nom du serveur
3. numéro de table
4. numéro de consommation
5. libellé de consommation
6. prix unitaire de la consommation
7. quantité d’une consommation commandée
8. montant de la ligne (égale à la quantité d’une consommation commandées multipliée par le prix unitaire de la consommation)
9. date de la commande
10. heure de la commande
11. numéro de la commande (N° remis à 1 chaque matin et incrémenté par pas de 1 dans l’ordre des commandes).
12. montant total de la commande

**Informations complémentaires :**

- Le café est composé de 12 tables numérotées de 1 à 12.
- Un serveur est affecté à plusieurs tables, par journées complètes.
- Une commande correspond à une table unique.


**Etablir le dictionnaire des données, le MCD et le MLD adéquat.**

Lorsque vous avez validé votre travail avec votre formateur, créer un fichier SQL contenant les instructions pour créer la base de données.


## Jeu d'essai

Une fois votre base de données créée, implémentez un nouveau fichier SQL contenant les instructions permettant l'ajout des données d'un jeu d'essai contenant : 

**Serveurs**

| ID | Nom Prénom |
| --- | --- |
| 1 | Poglio Marc |
| 2 | Dupond Sabine |
| 3 | Malakaf Sabah |

**Consommations**

| ID | Nom | Prix |
| --- | --- | --- |
| 1 | Café Expresso | 1.80 |
| 2 | Cappuccino | 2.90 |
| 3 | Chocolat Chaud | 2.80 |
| 4 | Thé à la menthe | 1.60 |
| 5 | Eau plate | 1.00 |
| 6 | Eau gazeuse | 1.20 |
| 7 | Soda Cola | 2.00 |
| 8 | Soda Orange | 2.00 |
| 9 | Jus de pêche | 1.80 |
| 10 | Virgin Mojito | 4.20  |

**Tickets de caisse** 

Toutes les lignes possédant le même "ID Ticket" correspondent au même ticket de caisse. *Par exemple, toutes les lignes avec l'**ID ticket** N°1 correspondent à une facture unique (le ticket de caisse présenté au client)*.

| ID Ticket | N° Table | ID Consommation | Quantité | ID Serveur
| --- | --- | --- | --- | --- |
| 1 | 5 | 2 | 1 | 2 |
| 1 | 5 | 1 | 1 | 2 |
| 2 | 7 | 3 | 2 | 1 |
| 2 | 7 | 2 | 2 | 1 |
| 2 | 7 | 4 | 1 | 1 |
| 3 | 1 | 6 | 3 | 2 |
| 3 | 1 | 8 | 3 | 2 |
| 4 | 9 | 10 | 2 | 3 |
| 5 | 11 | 10 | 1 | 2 |
| 5 | 11 | 9 | 1 | 2 |
| 5 | 11 | 2 | 2 | 2 |

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher toutes les consommations triées par prix du plus cher au moins cher.

2. Afficher les serveurs ayant servi au moins 2 tables différentes 

3. Afficher les serveurs avec, pour chaque serveur, le **nombre** total de consommations qu'il a servies.

4. Afficher les serveurs avec, pour chaque serveur, le **montant** total des consommations qu'il a servies.

5. Afficher toutes les consommations avec, pour chaque consommation, le nombre d'unités vendues et le montant total correspondant.

> Valider votre travail avec vos formateurs avant de passer à la suite 
