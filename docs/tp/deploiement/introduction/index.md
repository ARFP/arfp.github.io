---
title: "Planifier le déploiement"
serie: "exercices"
index: 1
order: 1
---

En informatique, le déploiement désigne l’ensemble des opérations nécessaires pour qu’une solution applicative soit introduite dans un environnement d’utilisation prévu. 

Le déploiement comporte :
- La configuration de l’environnement d’exécution
- L’installation et la configuration de l’application
- Les tests (intégration, système et acceptation client)

## Différents types de déploiement

Il existe plusieurs types de déploiement. Chacun comporte des avantages et des inconvénients. Les services informatiques doivent les comparer pour trouver la meilleure technique à utiliser selon l'application prise en charge.

**Parmi les plus courants, quatre ressortent :**

**Le déploiement de base :** c'est le plus simple. Il permet de mettre à jour tous les environnements cibles de manière simultanée, sans avoir de stratégie ou de processus. C'est aussi le type de déploiement le plus risqué, car les logiciels ne sont pas déployés de façon contrôlée et lente. Ce type de déploiement peut être manuel ou automatisé.

**Le déploiement progressif :** ici, les applications logicielles sont mises à jour lentement et vont progressivement remplacer l'ancien logiciel. Il possède un certain risque, car l'application originale n'est pas préservée.

**Le déploiement bleu-vert :** celui-ci permet de préserver l'ancien environnement tout en déployant le nouveau en simultanée. Une fois l'application déployée, s'il y a un problème, il est possible de rediriger le trafic vers l'ancien pour qu'il fonctionne de manière optimale. Dès que le nouvel environnement est fonctionnel et ne présente pas de faille, il convient de mettre fin à l'ancien environnement.

**Le déploiement canari :** il consiste à déployer une application par sous-ensemble. Au début, il est destiné à un petit groupe de personnes, puis il est déployé de manière incrémentielle au travers de versions progressives. Ce type de déploiement permet d'avoir des retours d'expérience anticipés d'utilisateurs et d'identifier les bugs afin de les supprimer pour la version finale. Le déploiement canari est intéressant pour les applications qui possèdent un groupe identifiable d'utilisateurs et non général.


# Ressources

**Lectures :** 

- [Les environnements d'exécution](https://devoldere.net/ressources/deploiement/01%20-%20Environnements-dev-test-prod.pdf)
- [Le déploiement manuel et automatique](https://devoldere.net/ressources/deploiement/02%20-%20Deploiement%20-%20manuel%20et%20auto.pdf)
- [Définir un plan de déploiement](https://devoldere.net/ressources/deploiement/03%20-%20Deploiement%20-%20plan%20de%20deploiement.pdf)
- [Rédiger une procédure de déploiement (Modèle)](https://devoldere.net/ressources/deploiement/04%20CDA%20DWWM%20Modele%20Documentation%20D%c3%a9ploiement%201.0.7.pdf)
- [Rédiger un changelog](https://devoldere.net/ressources/deploiement/05%20CDA%20DWWM%20Changelog%201.0.0.pdf)
