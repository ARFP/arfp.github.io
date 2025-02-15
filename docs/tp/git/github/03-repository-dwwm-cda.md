---
title: "Mon dépôt DWWM/CDA"
order: 3
serie: "github"
---

## Pré-requis : 
- Posséder un compte sur [Github](https://github.com)
- Savoir créer un dépôt sur github
- Savoir synchroniser un dépôt GIT en ligne de commande ou avec [Github Desktop](https://desktop.github.com)
- Savoir lire et suivre un tutoriel en Anglais
- [Avoir créé votre dépôt de formation](./01-training-repository/)

## Compétences mises en oeuvre : 
- Gérer ses fichiers sources avec GIT et Github
- Utiliser l'Anglais dans un contexte professionnel

## Créer ma 1ère branche

Créer une nouvelle branche que vous nommerez `develop`.

## Protéger la branche principale 

Sur GitHub, rendez-vous dans les paramètres de votre dépôt et protégez la branche principale (main). Il s'agit ici d'interdire les `COMMIT` vers cette branche.

> A partir de ce point, le travail ci-dessous doit être effectué sur la branche **develop** !


## Créer mon 1er projet .NET Console

A la racine du dépôt :

- Créer un répertoire "Algorithmes"
- Dans ce répertoire, créer un sous-dossier "ConsoleIntroduction"
- Ouvrir un terminal dans ce dossier
- Créer un projet C# .NET Console en tapant la commande :
    - `dotnet new console`
- Effectuer un `COMMIT` avec le message "creation projet ConsoleIntroduction"
- Ouvrir le projet dans **Visual Studio Code** <img src="/assets/img/vscode.svg" alt="drawing" style="width:100px;"/>
- Rédiger l'algorithme et implémenter le code correspondant à la demande suivante :

>
>    - L'utilisateur entre son prénom et son âge.
>    - Le programme affiche "Bonjour " suivi du prénom saisi.
>    - Le programme affiche ensuite *Vous êtes majeur* ou *Vous êtes mineur* selon l'âge fourni.
>    - Si l'âge est supérieur ou égal à 18 (majeur)
>        - Le programme demande la ville de résidence à l'utilisateur.
>    - Si l'âge est inférieur à 18 (mineur)
>        - Le programme demande la couleur préférée de l'utilisateur.
>    - Pour terminer, le programme affiche toutes les informations saisies : `prénom`, `âge`, `mineur ou majeur`, `ville de résidence ou couleur préférée`.
>


Pour tester votre programme, tapez la commande `dotnet run` dans votre terminal.

Lorsque vous avez terminé, effectuer un `COMMIT` avec le message "Fin Exercice ConsoleIntroduction" puis pousser (`PUSH`) votre travail sur GitHub.

Rendez-vous ensuite sur GitHub puis créer un nouveau `PULL REQUEST` et fusionnez votre travail effectué sur la branche `develop` vers la branche `main`. (A la fin du processus, ne pas supprimer la branche develop).

> Validez votre travail avec un formateur avant de passer à la suite 

## Entrainez vous

Pour la suite, vous utiliserez **Visual Studio 2022**. <img src="/assets/img/visualstudio2022.svg" alt="drawing" style="width:160px;"/>

Avant de poursuivre, prenez le temps de vous documenter : 

- [Création d'un projet dans Visual Studio](https://learn.microsoft.com/fr-fr/visualstudio/ide/create-new-project?view=vs-2022) 

Réalisez [les exercices de cette page](/tp/algorithmes/exercices2/).

**Pour chaque exercice :**

- Créer un sous répertoire dans le dossier "Algorithmes" de votre dépôt.
- Créer le projet .NET
- Écrire l'algorithme en pseudo-code
- Implémenter le code
- `COMMIT` et `PUSH`

Lorsque la série d'exercice est terminée, fusionnez votre travail vers la branche principale à l'aide d'un `PULL REQUEST` sur GitHub.

