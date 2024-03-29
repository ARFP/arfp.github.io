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

L'entreprise UNTEL fabrique des micro-processeurs de différentes marques prévus pour les architectures x86 et x64. 

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

![cpuz-api-1](./cpuz-api-1.jpg)

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

> Valider la 1ère partie avec vos formateurs avant de passer à la suite 

## Développement de l'interface utilisateur

Lorsque votre API est fonctionnelle: 
- Ajouter un fichier `cpuz.html` dans le répertoire `public` de votre projet.
- Importer VueJS `<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>`
- Développer l'interface utilisateur en vous basant sur les maquettes ci-dessous.

**Images à utiliser :**
- [La bannière](./banner.jpg)
- [Le logo INTEL](./intel.svg)
- [Le logo AMD](./amd.svg)

**Couleurs à utiliser :**

- <span style="background-color:#0079bc; display:inline-block; height:12px; width:20px;"></span> Bleu clair : #0079bc
- <span style="background-color:#0079bc55; display:inline-block; height:12px; width:20px;"></span> Bleu clair transparent : #0079bc55
- <span style="background-color:#00008b; display:inline-block; height:12px; width:20px;"></span> Bleu foncé : #00008b
- <span style="background-color:#FF0000; display:inline-block; height:12px; width:20px;"></span> Rouge : #FF0000

### Affichage des données de l'API

Au chargement de la page, les données sont récupérées depuis l'API et sont affichées dans des blocs distincts.

![cpuz-ui-1](./cpuz-ui-1.jpg)

### Gestion des stocks 

À la suite des éléments affichés, ajouter un petit formulaire permettant de gérer le stock de chaque CPU. 

![cpuz-ui-2](./cpuz-ui-2.jpg)

Le menu déroulant contient la liste des CPUs. 

![cpuz-ui-3](./cpuz-ui-3.jpg)

Lorsqu'un CPU est sélectionné, un champ s'affiche et permet de modifier le nombre d'unités en stock pour le  CPU concerné. 

![cpuz-ui-4](./cpuz-ui-4.jpg)

Cette information est visible uniquement dans le navigateur et ne doit pas être sauvegardée en base de données. Par contre, pensez à synchroniser cette valeur avec la valeur affichée dans les blocs d'informations des CPUs

![cpuz-ui-5](./cpuz-ui-5.jpg)

> Valider le fonctionnement de l'UI avec vos formateurs.

## Sauvegarder le stock des CPUs 

Modifier votre API afin de pouvoir sauvegarder le nombre d'unités en stock de chaque CPU en base de données.

Une fois cette modification effectuée, ajouter un bouton de validation qui déclenchera la sauvegarde en base de données en émettant une requête `PATCH`.

> Valider le fonctionnement de la sauvegarde avec vos formateurs.

## Gérer les lignes de production 

Chaque CPU est fabriqué sur une ou plusieurs ligne(s) de production. Ajouter l'entité correspondante.

Une ligne de production est caractérisée par :

- Un nom.
- Une description.
- La durée d'un cycle de production d'un CPU exprimé en secondes.

Une ligne de production ne concerne d'un seul CPU.

Un CPU n'est pas forcément associé à une ligne de production.

Au niveau de l'API, les lignes de production sont accessibles en lecture uniquement.

Ajouter ensuite les 2 lignes de production du jeu d'essai : [productions.json](./productions.json)

![cpuz-api-2](./cpuz-api-2.jpg)

> Valider l'entité créée avec vos formateurs avant de passer à la suite.

### Ajouter le contrôleur et les vues

Les lignes de production sont gérées en utilisant le modèle MVC. Vous êtes libre de proposer la mise en page de votre choix.

1. Ajouter un contrôleur `ProductionsController`
2. Développer les vues et formulaires permettant de :
    - Afficher la liste des lignes de productions.
    - Ajouter une nouvelle ligne de production.
    - Modifier une ligne de production existante.
    - Supprimer une ligne de production existante.

> Valider le fonctionnement de votre contrôleur avec vos formateurs avant de passer à la suite.


## Créer un simulateur de productions

Il est temps de créer une page qui simulera la production de CPUs.

- Ajouter un fichier `simulation.html` dans le répertoire public de votre projet.
- Importer VueJS `<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>`.
- Développer l'interface utilisateur en vous basant sur la maquette ci-dessous.
    - Réutilisez le jeu de couleurs utilisé dans la page `cpuz.html`.

![cpuz-ui-b1](./cpuz-ui-b1.jpg)


**Fonctionnement de la page**

Les lignes de productions sont chargées à partir de l'API.

Chaque ligne de production est affichée dans un bloc de 620 pixels de large.

L'utilisateur détermine le nombre de CPU à produire (minimum: 1, maximum: 100).


Au clic sur le bouton `Start`, la production démarre : 
- Le champ et le bouton `Start` ne sont pas accessibles tant que la production est en fonctionnement.
- La 1ère barre de progression affiche la progression du CPU en cours de production suivie du nombre de secondes restantes avant que le CPU soit terminé.
- La 2nde barre de progression affiche la progression de tous les CPUs suvi d'un compteur permettant de savoir où en est la production actuelle.

Lorsque tous les CPUs demandés sont terminés: 
- Mettre à jour le stock du CPU concerné en emettant une requête `PATCH`.
- Afficher un message confirmant la réussite de la mise à jour du stock.
- Le champ et le bouton `Start` sont à nouveau utilisables.
- Les barres de progression et les compteurs sont réinitialisés.

A noter que les compteurs n'apparraissent que si la prodcution est lancée.

> Valider le fonctionnement de votre simulateur avec vos formateurs.
