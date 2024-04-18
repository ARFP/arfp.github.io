---
title: "Hiérarchie d'objets"
order: 3
---

## La relation de généralisation/spécialisation

La relation de généralisation/spécialisation est l'association entre deux objets permettant d'exprimer que l'un est plus général que l'autre et inversement.

En développement informatique, on parle de relation d'héritage (un objet "hérite" d'un autre objet).

Dans un diagramme, cette relation est représenté par une flêche entre les 2 objets.

Exemple : 

![exemple.png](img/exemple.png)

Ci-dessus est représenté une hiérarchie d'objets (en réalité une hiérarchie de classes).

L'animal est l'objet le plus général.

Un équidé est un animal
- `Équidé` est une spécialisation d'`Animal`.
- `Équidé` hérite d'`Animal`.

Un cheval est un équidé
- `Cheval` est une spécialisation d'`Équidé`.
- `Cheval` hérite d'`Équidé`.
- Par extension, un `Cheval` est un `Animal`.

Un zèbre est un équidé
- `Zèbre` est une spécialisation d'`Équidé`.
- `Zèbre` hérite d'`Équidé`.
- Par extension, un `Zèbre` est un `Animal`.

# Exercices de hiérarchisation

Pour chaque exercice :
1. Hiérarchisez les éléments listés dans un diagramme.
2. Validez votre diagramme avec votre formateur.

## 1) Le monde animal 

- Animal
- Chien
- Bovin
- Carpe
- Chanteur
- Chat Norvégien
- Labrador
- Félin
- Lièvre
- Lapin
- Oiseau
- Tigre 
- Joe Dassin
- Canin 
- Vache 
- Poisson
- Mammifère
- Baleine
- Yorkshire
- Humain
- Milou


## 2) Le monde végétal

- Végétal
- Tulipe
- Platane
- Chêne
- Tomate
- Cerise
- Arbre
- Menthe poivrée
- Fleurs
- Pomme de terre
- Arbre fruitier 
- Fraise 
- Légume
- Fruit
- Carotte
- Rose
- Nénuphar

--- 

## 3) Le monde du vivant 

(travail collectif) 

Fusionner les 2 listes précédentes et y inclure : 

- José Bové
- Être Vivant
- Mandarine
- Chat 
- Loup 
- Patate douce 
- Lion 
- Formateur
- Stagiaire 
- Corbeau 
