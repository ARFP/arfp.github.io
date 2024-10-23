---
title: "L'arène"
serie: "poo"
order: 101
---

## INTRODUCTION 

Cet exercice vous permettra de mettre en œuvre vos compétences en développement orienté objet. 

Cet exercice peut être réalisé avec n’importe quel langage orienté objet (Java, C#, JS…). 

Nous vous recommandons de faire cet exercice en mode « console » pour bien vous concentrer sur les interactions entre les objets. 

Lorsque vous avez terminé le projet en mode « console », vous pouvez envisager de développer une interface graphique pour rendre votre jeu plus « vivant » 😊. 


## CONTEXTE 

Monsieur Takatoukitaï, Geek accompli, vous demande de réaliser un programme de simulation pour son prochain jeu : **HighGlandeur, le dernier survivant**. Il souhaite positionner un certain nombre de personnages aux caractéristiques définies dans une "arène" et leur faire accomplir certaines actions (se nourrir, combattre, se soigner…).

Votre mission (et vous l’acceptez) : lui concevoir un programme qui fera la chose suivante :

> Je devrai pouvoir mettre des personnages et des plantes dans mon arène virtuelle, et faire passer le temps pour savoir si tout se passe bien. Au bout d'un certain temps, il ne devrait rester qu'un personnage dans l'arène (le dernier survivant). Parfois, il peut arriver qu'aucun personnage ne survit...

Traduit en langage technique, cela signifie qu’il faudra un programme en deux phases :

1. L’initialisation : au démarrage, les personnages et les plantes sont ajoutés dans l'arène.
2. Le temps qui passe : on résout les actions d’un tour, et on fait un rapport de la situation.


## Partie 1 : L'arène

Dans cette 1ère partie, vous vous concentrerez sur la création de l'arène et le placement des personnages et plantes dans l'arène ainsi créée.

### Exercice 1.1 : Concevoir l'arène 

L'arène est représentée par un objet contenant un tableau à 2 dimensions où chaque "case" représente les coordonnées d'un emplacement dans l'arène.

La taille de l'arène est de 8x8 cases.

**Représentation de l'arène 8x8 cases :** 

| \ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **0** | X | X | X | X | X | X | X | X |
| **1** | X | X | X | X | X | X | X | X |
| **2** | X | X | X | X | X | X | X | X |
| **3** | X | X | X | X | X | X | X | X |
| **4** | X | X | X | X | X | X | X | X |
| **5** | X | X | X | X | X | X | X | X |
| **6** | X | X | X | X | X | X | X | X |
| **7** | X | X | X | X | X | X | X | X |

*Chaque **X** représente un emplacement de l'arène*

Dans chaque case il pourra y avoir :
- Soit un personnage, représenté par un objet de type `Personnage`
- Soit une plante, représenté par un objet de type `Plante`
- Soit rien (représenté par la valeur `NULL`). 

**Modéliser les éléments ci-dessus dans un diagramme de classes UML.**

Au démarrage du programme, initialiser l'arène avec toutes les cases "vides".

### Exercice 1.2 : Peupler l'arène avec de la végétation 

Il s'agit de la base du programme, avoir une arène avec un peu de végétation.

Une plante possède **8** points de vie et peut-être une **fougère** ou un **cactus**.

- Un cactus est toujours toxique
- Une fougère peut éventuellement être toxique
    - Au moment de sa création, une fougère a *1 chance sur 3* d'être toxique.

**Ajouter les éléments ci-dessus dans votre diagramme de classes UML.**

Après initialisation de l'arène, y placer aléatoirement : 

- 15 fougères
- 15 cactus

> Info : il ne peut y avoir 2 objets dans la même case !

> Rappel: les cases vides possèdent la valeur `NULL`.


### Exercice 1.3 : La reproduction végétale 

Les plantes sont des êtres vivants pleines de ressources !

A chaque tour de jeu, les évènements suivants sont réalisés :
- Chaque plante perd 1 point de vie.
- Lorsque'une plante arrive à **4** points de vie :
    - La plante regagne **3** points de vie et se clone.
    - Le clone est placé aléatoirement dans une case vide de l'arène.

> La toxicité d'une fougère clonée est identique à son parent (la plante mère).

## Partie 2 : Les personnages entrent dans l'arène

Dans cette partie, vous vous concentrerez sur les personnages ainsi que les actions qu'ils auront à réaliser.

### Exercice 2.1 : 

Ajoutons maintenant quelques personnages dans notre arène. Un personnage possède les caractéristiques suivantes :

| Attribut | Signification | Type | Remarques
| --- | --- | --- | --- |
| nom | Nom du personnage | string | Obligatoire, unique |
| pv | Points de vie actuels du personnage | int | Obligatoire |
| pvMax | Points de vie maximum du personnage | int | Obligatoire, strictement égal à 10, non modifiable |
| puissance | Puissance du personnage | int | Obligatoire, valeur comprise entre 2 et 10 |
| pouvoir | Pouvoir du personnage | string | Obligatoire, unique | 


**Ajouter ces nouvelles informations dans votre diagramme de classes UML.**

**Créer et ajouter les 10 personnages ci-dessous dans l'arène.** (tous les personnages commencent avec leurs points de vie au maximum et sont placés au hasard dans l'arène).

> Rappel : il ne peut y avoir 2 objets dans la même case ! Si une case est déjà occupée, placer l'objet courant au hasard dans une autre case !

| Nom | Puissance |  Pouvoir |
| --- | --- |  --- |
| Ricko | 6 |  Mange une pomme | 
| Mike | 5 |  Cuit un oeuf |
| Mario | 7 |  Répare sa voiture | 
| Zeldu | 4 |  Cherche son Arc |
| Chief | 8 |  Épluche une patate |
| Snake | 3 |  Parle aux serpents |
| Freeman | 9 |  Écrit une nouvelle loi |
| Bellic | 6 |  Cherche un ami |
| Drake | 7 |  Boit un verre d'eau |
| Peach | 8 |  Lit la doc SQL |

### Exercice 2.2 : les déplacements

A chaque tour de jeu, après avoir réalisé les actions des plantes, chaque personnage se déplace aléatoirement dans une autre case de l'arène.

A chaque déplacement, un personnage peut atterir dans une case vide ou occupée.

**Si la case de destination est vide :**

- Le personnage se positionne dans la case et il ne se passe rien d'autre.

**Si la case contient une plante :** 

- Si la plante est toxique, le personnage perd 1 point de vie.
- Si la plante est non-toxique, le personnage regagne 1 point de vie sans pouvoir dépasser le nombre de point de vie maximum (pvMax = 10) et la plante perd 1 point de vie.

Le personnage est ensuite redirigé vers une case innocupée. 

**Si la case de destination est occupée par un autre personnage**

- Un combat se déroule, le personnage possédant le plus de puissance gagne le combat, invoque son pouvoir et fait perdre 2 points de vie à son adversaire.
- Le perdant est ensuite ejecté de la case actuelle ce qui produit un déplacement vers une case vide.
- Le gagnant prend place dans la case.




## Partie 3

Il peut être contraignant de devoir repasser par toutes les étapes au début du programme. 

### Exercice 3.1 : La sauvagarde unique

Notre joueur souhaiterait pouvoir retrouver l'état actuel d'une partie dans le cas où il aurait fermé le programme avant qu'il ne soit terminé.

Il pourrait être une bonne idée de sauvegarder les informations d'une partie à la fin de chaque tour de jeu..

Sauvegardez ces informations dans un fichier `arene.json` qui sera chargé automatiquement au lancement du programme.

### Exercice 3.2 : Les multiples sauvegardes

Cependant, si un autre joueur lance le jeu, il souhaitera peut-être démarrer une nouvelle partie sans toutefois écraser la sauvegarde existante. 

Un joueur devra désormais s'identifier avant de lancer une partie. Le fichier de sauvegarde se nommera désormais `arene-pseudo.json` où `pseudo` est le pseudonyme du joueur.

Par exemple, la sauvegarde du joueur dont le pseudonyme est `toto` se fera dans un fichier nommé `arene-toto.json`.

Au lancement du programme :

1. Le joueur entre un pseudo
2. S'il existe déjà une sauvegarde à son nom, proposer : 
     - de charger la partie sauvegardée 
     - ou de démarrer une nouvelle partie


### Exercice 3.3 : Les multiples sauvegardes temporelles

Proposer une solution pour que chaque joueur puisse sauvagarder plusieurs parties à son nom.

### Exercice 3.4 : Et la confidentialité la dedans ?

Des joueurs se plaignent, si un joueur connait le pseudonyme d'un autre joueur, il peut charger ses parties et interférer avec ses sauvegardes !

Proposer une solution pour sécuriser l'accès !

--- 

> Valider votre travail avec vos formateurs avant d'envisager une version avec interface graphique.
