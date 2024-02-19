---
title: "api-cpuz"
serie: "api"
order: 21
---

Dans cet exercice, vous devez réaliser une API REST permettant la gestion de `Microprocesseurs`.

Cet exercice peut être réalisé avec :
- PHP + Symfony
- C# + ASP.NET

Dans les 2 cas, l'API sera accessible via une interface de gestion: [Swagger UI](https://swagger.io/)


## Contexte

L'entreprise UNTEL fabrique des micro-processeurs prévus pour les architectures x86 et x64. 

Sa nouvelle usine, implantée à Mulhouse, disposera d’un tout nouveau système d’information et d’une suite logicielle expérimentale permettant la gestion des CPU et des lignes de production associées. 

Dans un 1er temps, votre travail consiste à développer une API réutilisable pour gérer et maintenir cette liste de CPU. 

Chaque micro-processeur est identifié par un entier numérique et possède les caractéristiques suivantes :  

- Marque  
- Nom de la famille 
- Nom de modèle  
- Fréquence de fonctionnement en Ghz (1 décimale) 
- Prix catalogue (0 décimale). 


**L'API permet de :**
- Lister tous les microprocesseurs
- Afficher 1 seul microprocesseur
- Ajouter un microprocesseur
- Modifier un microprocesseur

**L'API ne permet pas de :** 
- Supprimer un microprocesseur existant

## Travail à réaliser

1. Créer un dépôt public sur GitHub pour votre projet.
2. Cloner le dépôt en local.
3. Dans le dépôt créer un répertoire `cpu_api` et s'y positionner.
3. Créer la base de données.
    - Nom de la base de données : `db_cpuz`
4. Créer le projet.
5. Installer les dépendances nécessaires.
6. Configurer l'API.
    - L'api retourne des objets `JSON`.
7. Implémenter la ou les entité(s) nécessaire(s).
8. Ajouter les éléments du jeu d'essai fourni.
    - [cpuz.json](./cpuz.json)
9. Lorsque vous avez ajouté tous les CPUs, exporter la base de données créée et alimentée dans un fichier SQL `db_cpuz_export.sql` et enregistrer ce fichier dans un répertoire `_docs` à l'intérieur de votre projet.
10. Sauvegarder votre travail sur Github.
11. Partager le lien vers votre dépôt avec votre formateur
