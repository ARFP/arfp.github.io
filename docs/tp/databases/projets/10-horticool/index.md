---
title: "Horticool"
layout: default
serie: "projets"
order: 10
---

## Exercice de modélisation de base de données

- Niveau : Difficile 

1. Concevez le Modèle Conceptuel des Données
2. Réalisez le Modèle Logique des Données
3. Implémentez le script SQL de création de la base de données

## Contexte

Horticool est un collectif fondé à partir d'une idée simple : 

Cultiver ses fruits et légumes dans son jardin et échanger sa production au niveau local.

Plus concrètement et pour reprendre l'exemple donné par ses fondateurs : 

-	Je fais pousser des tomates dans mon jardin
-	De son coté, un autre membre du collectif fait pousser des haricots
-	Nous pouvons alors échanger tomates contre haricots
-	Chacun peut profiter de sa récolte et enrichir son assiette avec la production des membres du collectif


Le succès fut immédiat et le collectif compte désormais plusieurs milliers de membres répartis dans tout le pays. Chaque secteur géographique est rattaché à un "dépôt" qui est plus ou moins indépendant et gère sa propre liste de membres. Cependant, tous les membres du collectif sont connus au niveau national ce qui signifie que chaque dépôt est connecté à une base de données commune déjà existante (voir les annexes dans les pages suivantes). 

Il est à noter qu'un dépôt n'est pas rattaché à un département ou une région mais à un secteur géographique identifié par un nom unique et dont on connait le code du département et la commune où il se situe. Chaque secteur est rattaché à une liste de communes. Une commune ne peut être rattachée qu'à un seul dépôt et les membres peuvent participer à 1 dépôt au maximum.

Pour chaque dépôt, 1 responsable est élu pour 1 an. Son rôle est administratif (saisie des nouveaux membres par exemple) et logistique (gestion des accès au dépôt, des rassemblements locaux). Généralement, des membres assistent le responsable dans ses fonctions. 

Petit détail qui pourrait avoir son importance, le collectif est une association et tous les membres (dont les responsables) sont bénévoles. Le conseil d'administration, constitué des responsables de chaque dépôt, se réunit 2 fois par année. A ce titre, un dépôt est désigné pour accueillir l'évènement.

Des rassemblements hebdomadaires sont organisés dans chaque dépôt où les membres peuvent venir échanger leurs dernières trouvailles et procéder au "troc" (tomates contre haricots, asperges contre maïs…).

Les surplus sont revendus aux commerçants locaux et participent aux finances de l'association.
Les invendus sont distribués aux associations à proximité.

Cela fonctionnait bien au début mais le nombre conséquent de membres et de productions différentes a rendu difficile l'entente sur la valeur de certains produits. De plus, chaque dépôt dispose de sa propre gestion, ce qui complique encore plus les process.

 
## Comment le collectif doit fonctionner ?

**Inscription**

-	Marc produit des tomates en quantité dans son jardin.
-	Marc s'inscrit sur le site du collectif et indique son code postal. 
-	La liste des dépôts à proximité s'affichent avec les produits disponibles pour chacun d'entre eux.
-	Marc sélectionne un dépôt, il y est désormais rattaché.
-	Marc renseigne sa fiche membre :
o	Type de production (ce que Marc produit dans son jardin, par exemple des tomates "Cœur de Bœuf").
o	Marc pourra éditer cette liste à tout moment
o	Il indiquera chaque semaine, la quantité qu'il met à disposition du collectif
-	Marc a maintenant accès à la liste de tous les produits accessibles dans le dépôt où il est inscrit.
-	Pour chaque produit, une équivalence en poids est affichée (par exemple, 1 Kilo des tomates "Cœur de Bœuf" de Marc permettent de récupérer 800 grammes de haricots "Nains de Marseille").


**Rassemblements hebdomadaires**

-	Au plus tard 5 jours avant la date du rassemblement, Marc indique sur le site la quantité de tomates "Cœur de Bœuf" qu'il met à disposition (et tout autre produit qu'il aurait référencé à son inscription).
-	Durant les 5 jours précédents et jusqu'à la veille du rassemblement, Marc peut sélectionner les produits qu'il souhaite pouvoir récupérer (ses tomates sont sa monnaie d'échange).
-	Les autres membres peuvent, de leur côté, sélectionner les tomates de Marc.
-	La veille du rassemblement, Marc dépose ses tomates au dépôt (la quantité déclarée en début de semaine).
-	Des membres de l'association préparent les paniers en se basant sur les réservations.
-	Marc se rend au rassemblement hebdomadaire et récupère son panier de produits. 
-	Les tomates de Marc qui n'ont pas été réservées sont cédées au collectif sous forme de don.
-	Les surplus et dons sont revendus aux commerçants locaux.
-	Les invendus sont distribués aux associations locales.

**Valeur des produits**

Elle est définie au niveau national et est indexée sur la moyenne des prix Hors Taxes pratiqués dans le commerce de gros l'année précédente.

Au niveau du système, si Marc cède 6 kilos de tomates "Cœur de Bœuf" pour le prochain rassemblement, et que le prix moyen de ses tomates dans le commerce est de 2€ HT le Kilo, marc dispose d'un crédit de 12 € (6 Kilos x 2 €).
Marc veut des haricots "Nains de Marseille" affichés à 3€ le kilo, il pourra en réserver 4 Kilos (4 Kilos * 3€ = 12 €).

Marc peut également céder ses tomates et ne rien réserver cette semaine-là.

A tout moment, on peut donc connaitre la différence entre ce qu'un membre a cédé et ce qu'il a réservé et récupéré. Cette différence, que le collectif appelle "crédits" est exprimée en Euros. Le solde en crédit de chaque membre ne peut être négatif.

Marc est membre du collectif depuis 2 mois. Il a depuis cédé l'équivalent de 50€ de ses tomates et récupéré l'équivalent de 42 € de haricots (Marc aime les haricots). Marc dispose d'un crédit de 8€ qu'il peut utiliser à tout moment pour réserver d'autres produits.

Sandrine est membre du collectif depuis 4 mois. Elle a depuis cédé l'équivalent de 300€ de produits et récupéré l'équivalent de 297 € de produits. Elle dispose aujourd'hui d'un solde de 3€. Elle souhaite récupérer 1 kilo de citrons affichés à 4€ le Kilo. 

3 solutions s'offrent à elle : 
-	proposer des produits pour augmenter son solde
-	réserver une quantité inférieure
-	ne rien réserver
