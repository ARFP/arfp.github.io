---
title: "Introduciton à Docker"
serie: "docker"
order: 2
---


Lancée en 2013, **la plateforme Docker** permet aux développeurs et aux administrateurs de développer, déployer et exécuter des applications avec des **[conteneurs](./index)**.

Plus précisément Docker permet d'embarquer une application avec toutes ses dépendances dans un processus isolé, nommé **conteneur**, qui peut ensuite être exécuté sur n'importe quelle machine (physique ou virtuelle) avec n'importe quel système d'exploitation compatible Docker.

<iframe width="800" height="450" src="https://www.youtube.com/embed/mspEJzb8LC4?si=c5UYNOpc6hX1P9p2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Installer Docker Desktop

URL de téléchargement : [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/).


## Les conteneurs Docker

Docker possède de nombreuses fonctionnalités reposant sur celles du noyau GNU/Linux, telles que les conteneurs.

Les conteneurs contiennent généralement un ou plusieurs programme(s) maintenus isolées du système hôte sur lequel elles s'exécutent. Ils permettent à un développeur de conditionner une application avec toutes ses dépendances, et de l'expédier dans un package unique.

Les conteneurs sont conçus pour faciliter le déploiement. Les développeurs et les administrateurs système peuvent déplacer le code des environnements de développement vers la production de manière rapide et reproductible. Mettre en place les environnements nécessaires au processus de déploiement utilisé (tests, intégration etc...) est facilité par cette approche.

De plus, une application qui fonctionne dans son conteneur sur votre PC de développement fonctionnera à l'identique dans son conteneur sur les serverus de production car le conteneur est le même et fait abstraction du système hôte dans lequel il est exécuté.


## Les images 

Une **image Docker** est un modèle en lecture seule pour les **conteneurs**. On y retrouve tout le code source de l’application à `conteneuriser`, ses dépendances, les bibliothèques à utiliser, son environnement d'exécution ainsi que d’autres outils nécessaires à la création du **conteneur**.

Les images Docker sont créées à partir d'un fichier appelé **Dockerfile**, qui définit les dépendances et les étapes nécessaires à la construction de l'image.

## Tester l'installation de Docker

Sur votre machine, le moteur de Docker (Docker engine) doit être en fonctionnement.

Sur vos postes de travail en formation, lancer Docker Desktop permet de démarrer le Docker Engine


## En vidéo 

- [Formation Docker sur Youtube](https://www.youtube.com/watch?v=GVogBCqrXck&list=PLn6POgpklwWq0iz59-px2z-qjDdZKEvWd&index=2)