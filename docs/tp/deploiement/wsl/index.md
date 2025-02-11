---
title: "Windows Subsystem Linux"
serie: "wsl"
index: 2
---

**WSL**, ou **Windows Subsystem for Linux** (Sous-système Windows pour Linux), est une fonctionnalité de Windows qui vous permet d'exécuter un environnement Linux directement sur votre machine Windows, sans avoir besoin d'utiliser un logiciel de virtualisation tiers.

WSL permet d'installer et d'utiliser des distributions GNU/Linux (comme Debian, Ubuntu, CentOS, etc...) de la même manière que des applications Windows. WSL permet d'accéder à un terminal Linux, exécuter des commandes Linux et même installer des applications Linux, le tout dans un environnement intégré à Windows.

Voici quelques points clés à retenir sur WSL :

- **Intégration**: WSL s'intègre étroitement avec Windows. Il est possible d'accéder aux fichiers Windows depuis Linux et vice-versa.
- **Performance**: WSL est conçu pour être léger et rapide. Il offre généralement de meilleures performances que les machines virtuelles traditionnelles.
- **Flexibilité**: WSL prend en charge plusieurs distributions Linux, ce qui permet de sélectionner celle qui convient le mieux aux besoins du projet.
- **Développement**: WSL est un outil puissant pour les développeurs. Il permet d'utiliser des outils et des environnements de développement Linux directement sur Windows.

WSL est une fonctionnalité très pratique pour ceux qui ont besoin d'utiliser Linux sur Windows. Il offre un moyen simple, rapide et efficace d'accéder à un environnement Linux.

# Avantages de WSL :

- **Léger** : WSL est beaucoup plus léger qu'une machine virtuelle traditionnelle, ce qui signifie qu'il consomme moins de ressources système.
- **Rapide** : Les performances sont généralement meilleures qu'avec une machine virtuelle classique, car WSL s'intègre directement au noyau Windows.
- **Facile à utiliser** : L'installation et la gestion de distributions Linux avec WSL sont relativement simples.

# Installer une distribution GNU/Linux

Dans la suite de ce document, vous allez apprendre à activer WSL et installer [GNU/Linux Debian](https://debian.org).

> Plus d'informations sur [les distributions GNU/Linux](https://fr.wikipedia.org/wiki/Distribution_Linux).

## Prérequis:

1. Le système Windows est à jour.
2. La virtualisation est activée dans le BIOS.
3. WSL est installé et activé
    - Si ce n'est pas le cas, ouvrir PowerShell en tant qu'administrateur et exécuter la commande: `wsl --install`

> Sur les machines disponibles en formation, WSL est déjà installé et prêt à l'emploi.


## Installation de GNU/Linux Debian

Il est possible d'installer une distribution GNU/Linux en ligne de commande avec PowerShell ou en utilisant le Microsoft Store.

### Avec PowerShell

1. Ouvrir PowerShell.
2. Saisir la commande `wsl --install -d Debian`.
    - Debian est téléchargé puis installé (cela peut prendre du temps...).
3. Redémarrer l'ordinateur.

### Via le Microsoft Store

1. Ouvrir le Microsoft Store : Recherchez "[Debian](https://apps.microsoft.com/search?query=debian&hl=fr-fr&gl=FR)" et sélectionner la distribution officielle.
2. Cliquez sur "Installer" : Le téléchargement et l'installation de Debian démarrent.
3. Il n'est normalement pas nécessaire de redémarrer l'ordinateur.
    - Si toutefois Debian ne se lance pas après installation, tentez le redémarrage ;)

## Démarrer et initialiser GNU/Linux Debian

Une fois installé, vous pouvez lancer **Debian** depuis le **menu Démarrer**. La première fois, il faudra patienter pendant que la distribution s'initialise.

Au premier lancement, vous devrez créer un utilisateur : Suivez les instructions pour configurer votre nom d'utilisateur et votre mot de passe pour votre nouvelle instance Debian.

> Attention, sur les systèmes UNIX et LINUX, lorsque vous tapez un mot de passe, rien ne s'affiche à l'écran (pas d'astérisques ou autre), c'est tout à fait normal, il s'agit d'un mécanisme de sécurité !

### Mises à jour

Après l'installation, il est recommandé de mettre à jour les paquets de Debian. Dans le terminal Debian, tapez :

```bash
sudo apt update && sudo apt upgrade
```

Il vous sera demandé de saisir votre mot de passe.


Voilà, Debian est installé, à jour et prêt à être utilisé.

Il est maintenant possible d'installer tous les outils de développement nécessaires comme GCC, Python, un serveur Web...

Mais avant de se lancer t^te baissée... Prenez le temps d'apprendre les commandes Linux de base : 
