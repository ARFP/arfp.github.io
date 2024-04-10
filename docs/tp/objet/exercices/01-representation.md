---
title: "Réprésentation Objet"
order: 2
---

# Représenter et coder des concepts simples

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- L'abstraction
- La représentation d'un concept en objet 
- La notation UML
- La traduction d'une classe modélisée avec UML vers un langage orienté objet

# Représenter un concept : Personne

**Modéliser le concept décrit ci-dessous.**

Une personne est caractérisée par son **nom**, son **prénom** et son **âge**. Les objets de classe Personne doivent également permettre de connaître les **revenus**. 

Les attributs de la classe sont privés et accessibles en lecture par des opérations publiques (accesseurs ou en Anglais: getters).

Il est possible de modifier les revenus d'une personne via une opération publique (mutateurs ou en Anglais: setters).

**Question 1 : Donnez une représentation UML de la classe Personne.**

> Valider votre travail avec un formateur avant de passer à la suite

**Question 2 : Enrichissez la représentation précédente pour prendre en compte les nouveaux éléments ci-dessous.**

Deux types de revenus sont envisagés : d'une part le salaire et d'autre part toutes les autres sources de revenus. Les deux revenus sont représentés par des nombres réels, accessibles en lecture via des accesseurs (getters) et sont modifiables via des mutateurs (setters). Bien entendu, un revenu, quelque soit sa source, ne peut être négatif !

On doit également pouvoir calculer les charges globales de chauqe personne. Pour cela, on applique une taxe de : 
- 20% sur les salaires
- 15% sur les autres revenus

> Valider votre travail avec un formateur avant de passer à la suite

**Question 3 : Enrichissez la représentation précédente pour prendre en compte les nouveaux éléments ci-dessous.**

Un objet de la classe Personne peut être créé à partir du nom, prénom et de la date de naissance (il sera alors nécessarie de calculer l'âge). Par ailleurs, le pourcentage des taxes appliquées aux revenus est divisé par 2 si la personne est âgée de plus de 50 ans.

> Valider votre travail avec un formateur avant de passer à la suite

# Modéliser des concetps simples 

Pour chaque élément de la liste suivante, modélisez la classe correspondante en utilisant la notation UML. Vous déterminerez vous-même un contexte d'utilisation ainsi que les attributs et quelques opérations associées (restez cohérents).

1. Un trajet routier
2. Un pilote d'avion
3. Une carte de tarot
4. Le bulletin météo quotidien d'une ville
5. Un pneu de voiture
6. Un appartement à louer
7. Une offre d'emploi

> Valider votre travail avec un formateur
