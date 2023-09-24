---
title: "Publier un CV HTML"
serie: "cicd"
order: 11
---

## Pré-requis : 
- Bases HTML
- Bases CSS
- Posséder un compte sur [Github](https://github.com)
- Savoir créer un dépôt sur github
- Savoir synchroniser un dépôt GIT avec [Github Desktop](https://desktop.github.com)
- Savoir lire et suivre un tutoriel en Anglais

## Compétences mises en oeuvre : 
- Créer un document HTML
- Mettre en forme un document HTML avec CSS
- Gérer ses fichiers sources avec GIT et Github
- Publier un site statique sur Github avec Github Pages
- Utiliser l'Anglais dans un contexte professionnel


## Publication d'un CV HTML sur Github

Nous avons tous l'habitude d'utiliser une suite bureautique pour la création et l'édition de nos CV. L'avantage est de pouvoir facilement transmettre le document particulièrement lorsqu'il est converti au format PDF (ce qui assure que la mise en page restera intacte).

Les développeurs ont généralement un compte sur une plateforme de gestion de version comme github ou gitlab. Cela leur permet de gérer leurs projets et de partager leur savoir-faire. Ces plateformes proposent des fonctionnalités similaires aux réseaux sociaux mais adaptés aux développeurs. Sur de telles plateformes, on publie du code plutôt que des photos de vacances.

Ces grandes plateformes proposent une fonctionnalité intéressante : publier automatiquement un site web à partir d'un dépôt GIT grâce à l'intégration continue. Le site est alors accessible via un sous domaine de la plateforme.

Cette fonctionalité permet à des millions de développeurs de publier leur CV, leur portfolio ou de mettre en avant un projet de manière simple, efficace, gratuite et automatisée.

> **L'objectif de ce mini-projet est de vous initier à ce concept d'intégration continue.**

Votre travail consiste à créer votre CV au format HTML, de le mettre en forme avec CSS et de le publier sur github grâce à github-pages, la fonctionalité de publication de sites web statiques de github. 


## Référentiel GIT 

La 1ère étape consiste à créer un référentiel GIT sur Github.

Rendez vous sur github et créez un dépôt nommé `username.github.io` où `username` est votre nom d'utilisateur sur Github.

Par exemple, pour le nom d'utilisateur `mdevoldere`, le dépôt doit obligatoirement être nommé `mdevoldere.github.io`

> plus d'informations sur github pages : https://pages.github.com/ 

Une fois créé, clonez ce dépôt sur votre machine locale pour commencer à travailler.


## Le CV 

A la racine de votre dépôt, créez un répertoire `docs`.
Dans ce répertoire, créez un fichier `index.html` qui contiendra le code HTML de votre CV.

Vous déposerez également votre CV au format PDF dans ce répertoire.

> Note: Tous les fichiers de votre site (html, css, js, images...) doivent obligatoirement être situés dans le répertoire `docs`. Dans ce répertoire `docs`, vous pouvez ajouter des fichiers et des sous-répertoires.

---

Votre CV doit contenir tous les éléments suivants :

- Un entête avec: 
    - Le titre du CV (poste recherché)
    - Les dates de début et de fin de votre futur stage
    - Votre photo (facultatif mais recommandé)
    - Votre nom
    - Votre prénom 
    - Votre âge (ne mettez pas votre date de naissance)
    - Votre ville et pays
    - Votre mobilité 
- Une phrase d'accroche 
- La liste de vos compétences principales
- Votre parcours pédagogique (Du plus récent au plus ancien)
- Votre expérience professionnelle (Du plus récent au plus ancien)
- Les langues que vous parlez/écrivez
- Vos centres d'intérêts
- un lien vers votre CV au format PDF


## A vous de jouer 

Vous avez la liberté de mettre en forme votre CV comme vous le souhaitez, soyez créatifs :)

Lorsque vous avez terminé, suivez ce [guide](https://guides.github.com/features/pages/) pour publier votre page web sur github grâce à github-pages.


### Astuces :

- Créez votre CV par étapes
    1. L'entête
    2. Les compétences
    3. L'expérience
    4. Le reste

A la fin de chaque étape, publiez votre travail sur github.

Manque d'inspiration ? Recherchez des modèles de CV sur le web pour vous aider.
