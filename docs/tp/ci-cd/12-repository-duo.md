---
title: "Gestion d'un dépôt en binôme"
order: 12
---

## Pré-requis : 
- Posséder un compte sur [Github](https://github.com)
- Savoir créer un dépôt sur github
- Savoir synchroniser un dépôt GIT en ligne de commande ou avec [Github Desktop](https://desktop.github.com)
- Savoir lire et suivre un tutoriel en Anglais
- Avoir terminé le TP [Gestion d'un dépôt individuel](./03-repository-solo.md)

## Compétences mises en oeuvre : 
- Gérer ses fichiers sources avec GIT et Github
- Travailler en collaboration sur un dépôt GIT
- Apprendre la syntaxe Markdown pour les fichiers de documentation
- Utiliser l'Anglais dans un contexte professionnel

# Gestion d'un dépôt à plusieurs

Cet exercice doit être réalisé en équipe de 2 personnes.

## Préparation du projet

1. Le 1er membre de l'équipe crée un dépôt public nommé **tp-git-duo-1**.
    - Cocher la case "**Add README**"
    - Ajouter la License "**MIT**"
2. Le 1er membre invite son binôme en tant que "**collaborateur**" du dépôt.
3. Les 2 membres de l'équipe prennent connaissance des tâches à effectuer (dans la partie "Travail à réaliser" de ce document) et créent les tickets nécessaires.
4. Les 2 membres de l'équipe clonent le dépôt en local sur leur machine.
5. Les 2 membres travaillent sur les tickets qui leur sont attribués
    - **Membre 1 :** Le membre du binôme qui a créé le dépôt.
    - **Membre 2 :** Le membre qui a été invité comme collaborateur du dépôt.

## Démarche à adopter 

Pour chaque tâche à réaliser : 

1. Créer un ticket sur github (dans l'onglet "issues" du dépôt)
2. Créer 1 commit lorsque la tâche est terminée.
3. Faire un "push" de votre commit sur GitHub.

En d'autres termes :
- 1 tâche = 1 ticket = 1 commit = 1 push

> Note: Créez tous les tickets AVANT de commencer à coder !


## Travail à réaliser (1ère partie)

Vous allez travailler sur des fichiers au format "Markdown" (extension des fichiers: `.md`).

Prenez quelques minutes pour en apprendre plus sur ce format : [https://programminghistorian.org/fr/lecons/debuter-avec-markdown](https://programminghistorian.org/fr/lecons/debuter-avec-markdown#quest-ce-que-le-markdown).

> **Rappel : faites obligatoirement un COMMIT et un PUSH après chaque tâche enumérée dans ce fichier.**

| # | Qui | Tâche(s) à réaliser |
| --- | --- | --- |
| 1 | Membre 1 | Dans le dépôt, modifier le fichier `README.md` et ajouter une ligne vide suivie d'une ligne contenant le texte `Bienvenue dans le dépôt de X` (Remplacez X par le prénom du membre 1)  |
| 2 | Membre 2 | Modifier le fichier `README.md` et modifier la ligne `Bienvenue dans le dépôt de X` en y ajoutant votre prénom. (Le texte doit maintenant être : "Bienvenue dans le dépôt de X et Y" où X et Y sont les prénoms des 2 collaborateurs)|
| 3 | Membre 1 | Créer un fichier `abc.md` contenant le titre `# Pré-qualifiante ABC DEV`. (le dièse en début de ligne indique que la ligne est un titre).  |
| 4 | Membre 2 | Créer un fichier `dwwm.md` contenant le titre `Formation DWWM` ainsi que le texte `La formation DWWM est de niveau 5` 2 lignes en dessous. |
| 5 | Membre 1 | Créer un fichier `cda.md` contenant le titre `Formation CDA` ainsi que le texte `La formation CDA est de niveau 6` 2 lignes en dessous. |
| 6 | Membre 2 | Dans le fichier `cda.md`, ajouter une ligne vide suivie d'une ligne contenant le texte `Le niveau 6 correspond à un niveau BAC+3 en France`. |
| 7 | Membre 1 | Dans le fichier `dwwm.md`, ajouter une ligne vide suivie d'une ligne contenant le texte `Le niveau 5 correspond à un niveau BAC+2 en France`. |
| 8 | Membre 2 | Dans le fichier `README.md` ajouter une ligne contenant le texte : `Collaborateur 1` suivi d'un lien vers votre compte github. |
| 9 | Membre 1 | Dans le fichier `README.md` ajouter une ligne contenant le texte : `Collaborateur 2` suivi d'un lien vers votre compte github. |
| 10 | Membre 2 | Modifier les fichiers `dwwm.md` et `cda.txt` et mettez les titres en MAJUSCULES. |


> Valider votre travail avec vos formateurs avant de passer à la suite.

# Travail à réaliser (2nde partie)

Organisez vous à 2 pour ajouter dans les fichiers `dwwm.md` et `cda.md` (pensez à créer les tickets correspondants) : 

1. Un titre "Description" suivi d'un paragraphe contenant une description de la formation
   - Faire un commit et un push 
2. Un titre "Durée" suivi d'un paragraphe contenant la durée de la formation exprimée en heures et en mois
   - Faire un commit et un push 
3. Un titre "Objectifs" suivi d'un paragraphe contenant Les objectifs de la formation
   - Faire un commit et un push

   
Ces informations sont accessibles sur ce lien : [https://www.crm68.fr/orientation-et-formation-professionnelle/je-recherche-une-formation/me-former-a-un-metier/informatique/](https://www.crm68.fr/orientation-et-formation-professionnelle/je-recherche-une-formation/me-former-a-un-metier/informatique/) 

Une fois ces informations ajoutées faites une recherche sur le web et ajouter dans chaque fichier (dwwm.md et cda.md) : 

1. Un titre "Fiche(s) ROME" suivi d'un ou plusieurs liens vers la ou les **fiches ROME** correspondant à la formation 
2. Un titre "Métiers accessibles (liste non exhaustive)"
3. Une liste des métiers accessibles (au moins 5 métiers par formation, uniquement les intitulés)

> Valider votre travail avec vos formateurs.
