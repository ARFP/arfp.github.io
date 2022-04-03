---
title: "Algorithmes : Exercices partie 5"
level: 5
order: 5
---

## Exercice 5.1 : Les fruits et légumes

L'utilisateur peut saisir des noms de légumes. Pour chaque légume, l'utilisateur précise un prix au kilo.

Exemple :  "carottes 2.99"

Lorsque l'utilisateur saisit la valeur "go", le programme affiche la liste des légumes avec leur prix ainsi que le légume le moins cher.

Exemple : 
```
1 kilogramme de carottes coute 2.99 euros.  
1 kilogramme de poireaux coute 1.99 euros.
[...]
Légume le moins cher au kilo : poireaux
```

## Exercice 5.2 : Jeu du "0 - 2"

A tour de rôle, l'ordinateur et le joueur choisissent un nombre qui ne peut prendre que 3 valeurs: 0, 1 ou 2.

Le choix du nombre par l'ordinateur sera simulé par génération d'un nombre aléatoire : `N <-- RANDOM`

Si la différence entre les nombres choisi vaut :
- 2 : le joueur qui a proposé le plus grand nombre gagne un point.
- 1 : le joueur qui a proposé le plus petit nombre gagne un point.
- 0 : aucun point n'est marqué. 

Le jeu se termine quand un des deux joueurs (l'ordinateur ou le joueur humain) totalise 10 points ou quand l'être humain introduit un nombre négatif qui indique sa volonté d'arrêter de jouer. 

Dans les 2 cas, afficher les scores.


## Exercice 5.3 : Ma bicyclette

Réalisez l’algorithme et le programme correspondant au texte ci-dessous : 

S'il fait beau demain, j'irai faire une balade à bicyclette. 

Je n'ai pas utilisé ma bicyclette depuis plusieurs mois, peut-être n'est-elle plus en parfait état de fonctionnement.

Si c'est le cas, je passerai chez le garagiste avant la balade. J'espère que les réparations seront immédiates sinon je devrai renoncer à la balade en bicyclette. Comme je veux de toute façon profiter du beau temps, si mon vélo n'est pas utilisable, j'irai à pied jusqu'à l'étang pour cueillir les joncs.

S'il ne fait pas beau, je consacrerai ma journée à la lecture. J'aimerais relire le 1er tome de Game of Thrones. Je pense posséder ce livre, il doit être dans la bibliothèque du salon. 

Si je ne le retrouve pas, j'irai l’emprunter à la bibliothèque municipale. Si le livre n'est pas disponible, j'emprunterai un roman policier. 

Je rentrerai ensuite directement à la maison.

Dès que j'aurai le livre qui me convient, je m'installerai confortablement dans un fauteuil et je me plongerai dans la lecture.


## Exercice 5.4 : Calcul du nombre de personnes

### Exercice 5.3.1 : Calculer le nombre de jeunes

Il s'agit de dénombrer toutes les personnes d'âge strictement inférieur à 20 ans parmi un échantillon de 20  personnes. 

L’utilisateur est invité à saisir les 20 valeurs.

Décrivez l'algorithme qui affiche le nombre de jeunes et codez la solution.

### Exercice 5.3.2 : Afficher le nombre de personnes de chaque catégorie 

Compléter l'algorithme précédent pour répondre à la demande suivante:

- Si toutes les personnes ont moins de 20 ans, affichez « TOUTES LES PERSONNES ONT MOINS DE 20 ANS ».
- Si aucune personne n'a moins de 20 ans, affichez « TOUTES LES PERSONNES ONT PLUS DE 20 ANS ».
- Sinon, affichez le nombre de personnes pour chaque catégorie (« - de 20, + de 20, = à 20).


Jeux d'essai: 

- Pas de jeunes
    - 45  35  65  76  34  32  31  46  57  68  75  46  53  36  31  46  68  59  30  20
- Pas de non-jeunes
    - 15  5  5  6  4  2  11  16  7  8  7  3  13  16  11  18  8  9  19  3
- Des jeunes et des non-jeunes
    - 45  35  65  76  34  20  20  30  30  30  20  20  30  20  30  20  20  8  15  23 


## Exercice 5.5 : DENOMBRER LES LETTRES DE L'ALPHABET 

Lire un texte d'au moins 120 caractères (à contrôler). 

Compter et afficher le nombre d'occurrences (d'apparitions) de chacune des lettres de l'alphabet.
