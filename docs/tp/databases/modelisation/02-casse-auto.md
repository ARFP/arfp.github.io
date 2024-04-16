---
title: "Casse Auto"
serie: "modelisation"
order: 2
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

Une casse automobile souhaite gérer son stock de pièces. Chaque pièce est identifiée par une **référence**, une **catégorie** (carrosserie, mécanique, électricité, etc.), une **date de récupération** et un **prix de vente**. 

On souhaite également pouvoir établir une correspondance entre les pièces et les véhicules pour lesquels elles conviennent, ces véhicules étant repérés par **marque**, **modèle** et **année**.

**Etablir le dictionnaire des données, le MCD et le MLD adéquat pour les deux hypothèses suivantes :**
1. Toutes les pièces d'une même référence possèdent un prix unique
2. Chaque pièce possède un prix propre selon son état (bon, moyen, mauvais).


## Jeu d'essai à utiliser

Lorsque vous avez terminé les 2 versions du système ; créer le script de création de la base de données pour le cas n°1.

Ensuite, créer le script permettant l'insertion du jeu d'essai ci-dessous : 

**Voitures**

| ID | marque | modèle | année |
| --- | --- | --- | --- |
| 1	| Renault | Clio | 2020 |
| 2	| Peugeot | 208 | 2021 |
| 3	| Citroën | C3 | 2022 |
| 4	| Volkswagen | Golf | 2019 | 
| 5	| Volkswagen | Passat | 2021 |
| 6	| Toyota | Yaris | 2018 |

**Pièces détachées**

| id | référence | catégorie | date de récupération | prix de vente HT | ID voiture | 
| --- | --- | --- | --- | --- | --- |
| 1	| P-RENAULT-CLIO-PARECHOCS-AVANT | Carrosserie | 2023-10-04 | 150.00	| 1 | 
| 2	| P-PEUGEOT-208-RETROVISEUR-GAUCHE | Carrosserie | 2023-11-15 | 80.00	| 2 | 
| 3	| P-CITROEN-BATTERIE | Electricité | 2023-12-22 | 110.00	| 3 | 
| 4	| P-VOLKSWAGEN-FILTRE-A-HUILE | Mécanique | 2024-01-10 | 20.00	| 4 | 
| 5	| P-TOYOTA-PNEU-AVANT-GAUCHE | Carrosserie | 2024-02-07 | 60.00	| 6 | 
| 6	| P-VOLKSWAGEN-ALTERNATEUR | Electricité | 2024-03-14 | 230.00	| 5 | 

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

Créer un fichier SQL contenant les requêtes suivantes :

1. Afficher toutes les voitures

2. Afficher toutes les voitures produites après 2020.

3. Afficher toutes les pièces détachées triées par prix du moins cher au plus cher.

4. Afficher les pièces détachées de la catégorie "Carrosserie" dont le prix hors taxes est inférieur à 100€.

5. Afficher toutes les pièces détachées pour la marque Volkswagen.

> Valider votre travail avec vos formateurs avant de passer à la suite 
