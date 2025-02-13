---
title: "Installer GNU/Linux Debian avec WSL"
serie: "wsl"
order: 3
---



Dans ce document, vous allez apprendre à activer WSL et installer [GNU/Linux Debian](https://debian.org).

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

Mais avant de se lancer tête baissée... Prenez le temps d'apprendre [les commandes Linux de base](./01-linux-cmd).


# Installer une stack L.A.M.P

Si vous avez suivi les étapes précédentes, votre Debian est prêt à l'emploi.

Vous pouvez maintenant installer la stack L.A.M.P (Linux apache MySQL PHP).

Dans le terminal Debian saisissez les commandes suivantes pour installer les paquets nécessaires : 

```bash
sudo apt install apache2
sudo apt install php8.2
sudo apt install mariadb-server mariadb-client
```


Ci-dessous, une petite vidéo expliquant les étapes d'installation et de configuration d'une stack L.A.M.P sur Ubuntu (la procédure est quasi identique sur Debian).

<iframe width="800" height="450" src="https://www.youtube.com/embed/-BLFvgb272E?si=BnW11nV-OpsZt4dM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>