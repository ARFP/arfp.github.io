---
title: "Windows Subsystem Linux"
serie: "wsl"
index: 3
order: 1
---

**WSL**, ou **Windows Subsystem for Linux** (Sous-système Windows pour Linux), est une fonctionnalité de Windows qui vous permet d'exécuter un environnement Linux directement sur votre machine Windows, sans avoir besoin d'utiliser un logiciel de virtualisation tiers.

> WSL est disponible sur Windows 10 et Windows 11.

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


## Prérequis pour utiliser WSL:

1. Le système Windows est à jour.
2. La virtualisation est activée dans le BIOS.
3. WSL est installé et activé
    - Si ce n'est pas le cas, ouvrir PowerShell en tant qu'administrateur et exécuter la commande: `wsl --install`

> Note : WSL est déjà installé et activé sur les machines utilisées en formation

## Démarrer avec WSL 

Ci-dessous, la 1ère vidéo d'une série de tutoriels d'initiation au Windows Subsystem Linux.

<iframe width="800" height="450" src="https://www.youtube.com/embed/uLbyhmpnbnE?si=tjEFguliE1QbpqAo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Pour visionner les tutoriels de cette série, suivez ce lien : 
- [youtube.com/watch?v=uLbyhmpnbnE&list=PLSuzYIVSEUT4LyB66TpKeCUmbTteLYrXz](https://www.youtube.com/watch?v=uLbyhmpnbnE&list=PLSuzYIVSEUT4LyB66TpKeCUmbTteLYrXz).
