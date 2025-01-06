---
title: "Comité d'entreprise"
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
- Créer et insérer un jeu d'essai cohérent
- Implémentez les requêtes SQL demandées

## Contexte 

Un comité d'entreprise souhaite gérer les informations concernant les enfants de ses salariés. 

Un employé a réalisé le tableau suivant :

| Nom et prénom de l'employé | Téléphone | Enfant | Âge | Enfant | Âge | Enfant | Âge |
| --- | --- | --- | --- | --- | --- | --- | --- |
| DURAND Albert | 01.02.03.04.05 | Martin | 13 | - | - | - | - | 
| LACOMBE Josette | 05.98.87.65.54 | Sylvie | 10 | Camille | 8 | Nathan | 4 | 
| MARTIN Roger | 04.32.21.45.56 | Marc | 11 | Cindy | 9 | - | - | 

Modéliser une base de données permettant de stocker ces informations de manière optimale.

Pour cela, établir le dictionnaire des données, le MCD et le MLD.

Ensuite, implémenter le script de création de la base de données et insérer le jeu d'essai du tableau ci-dessus.

> Valider votre travail avec vos formateurs avant de passer à la suite 

## Requêtes SQL à implémenter

1. Sélectionner tous les employés (nom, prénom, numéro de téléphone)

2. Sélectionner tous les employés triés par nom et par ordre décroissant

3. Sélectionner tous les employés avec, pour chaque employé, le nombre d'enfant

4. Sélectionner les employés sans enfant

4. Sélectionner les enfants (prénom, âge) triés par âge du plus jeune au plus agé. Pour chaque enfant, Le nom et prénom de son parent est également affiché.

> Valider votre travail avec vos formateurs avant de passer à la suite 
