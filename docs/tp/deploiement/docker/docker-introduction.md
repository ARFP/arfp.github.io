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


## Les images 

Une **image Docker** est un modèle en lecture seule pour les **conteneurs**. On y retrouve tout le code source de l’application à `conteneuriser`, ses dépendances, les bibliothèques à utiliser ainsi que d’autres outils nécessaires à la création du **conteneur**.


### Les conteneurs Docker

Docker possède de nombreuses fonctionnalités reposant sur celles du noyau GNU/Linux, telles que les conteneurs.

Les conteneurs contiennent généralement un ou plusieurs programme(s) maintenus isolées du système hôte sur lequel elles s'exécutent. Ils permettent à un développeur de conditionner une application avec toutes ses dépendances, et de l'expédier dans un package unique.

Les conteneurs sont conçus pour faciliter le déploiement. Les développeurs et les administrateurs système peuvent déplacer le code des environnements de développement vers la production de manière rapide et reproductible. Mettre en place les environnements nécessaires au processus de déploiement utilisé (tests, intégration etc...) est facilité par cette approche.


## En vidéo 

- [Formation Docker sur Youtube](https://www.youtube.com/watch?v=GVogBCqrXck&list=PLn6POgpklwWq0iz59-px2z-qjDdZKEvWd&index=2)