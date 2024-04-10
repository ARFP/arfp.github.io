---
title: "Les conditions #1"
level: 4
order: 2
---

# Partie 2

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Les structures conditionnelles


## Exercice 2.1 : Positif ou négatif ?

Écrire un algorithme qui demande à l'utilisateur de saisir **1** nombre entier et l'informe ensuite si le nombre est positif ou négatif.

Pour information, le nombre `0` est considéré **positif**.


## Exercice 2.2 : Positif ou négatif (bis) ?

Écrire un algorithme qui demande à l'utilisateur de saisir **2** nombres entiers et l'informe ensuite si leur **produit** est positif ou négatif.


## Exercice 2.3 : Ma catégorie au Football

Écrire un algorithme qui demande à l'utilisateur de saisir un âge et l'informe ensuite à quelle catégorie il appartient : 

- **Trop jeune** : Moins de 5 ans
- **Débutant** : De 5 à 6 ans
- **Poussin** : De 7 à 8 ans
- **Benjamin** : De 9 à 10 ans
- **Pupille** : De 11 à 12 ans
- **Minime** : De 13 à 14 ans
- **Cadet** : De 15 à 16 ans
- **Junior** : De 17 à 18 ans
- **Sénior** : De 19 à 34 ans
- **Vétéran** : 35 ans et + 


## Exercice 2.4 : Je prédis l'avenir

Cet algorithme est destiné à prévenir l'avenir et il doit être **infaillible** !

Le programme demande à l'utilisateur de saisir 2 nombres entiers correspondant respectivement à des heures et des minutes. Le programme affichera ensuite l'heure qu'il sera 3 minutes plus tard.

Par exemple, si l'utilisateur saisit **23** puis **12** (correspondant à **23h12**), le programme doit afficher **Dans 3 minutes, il sera 23h15**.

Si les nombres saisis par l'utilisateur sont "hors limite", le programme affichera "Les données saisies sont invalides"


## Exercice 2.5 : Réprographie

Un magasin proposant un service de Réprographie facture 0.10€ les 10 premières photocopies, 0.09€ les vingt suivants et 0.08 au delà.

Écrire l'algorithme qui demande à l'utilisateur de saisir le nombre de photocopies effectuées et affiche le montant de la facture correspondante.

## Exercie 2.6 : Élections

Les élections législatives, en Guignolerie Septentrionale, obéissent à la règle suivante :
- Lorsque l'un des candidats obtient plus de 50% des suffrages, il est élu dès le premier tour.
- En cas de deuxième tour, peuvent participer uniquement les candidats ayant obtenu au moins 12.5% des voix au premier tour.

Vous devez écrire un algorithme qui permet la saisie des scores de quatre candidats au premier tour. 

Cet algorithme traitera ensuite le candidat numéro 1 (et uniquement lui) : il dira s'il est élu, battu, s'il se trouve en ballottage favorable (il participe au second tour en étant arrivé en tête à l'issue du premier tour) ou défavorable (il participe au second tour sans avoir été en tête au premier tour).

## Exercice 2.7 : Tarif Assurance

Une compagnie d'assurance automobile propose à ses clients quatre familles de tarifs identifiables par une 
couleur, du moins au plus onéreux : 

- Tarifs **bleu**, **vert**, **orange** et **rouge**. 

Le tarif dépend de la situation du conducteur :

- Un conducteur de moins de 25 ans et titulaire du permis depuis moins de deux ans, se voit attribuer 
le tarif rouge, si toutefois il n'a jamais été responsable d'accident. Sinon, la compagnie refuse de 
l'assurer.

- Un conducteur de moins de 25 ans et titulaire du permis depuis plus de deux ans, ou de plus de 25 
ans mais titulaire du permis depuis moins de deux ans a le droit au tarif orange s'il n'a jamais 
provoqué d'accident, ou le tarif rouge s'il a été repsonsable d'un accident, sinon il est refusé.

- Un conducteur de plus de 25 ans titulaire du permis depuis plus de deux ans bénéficie du tarif vert 
s'il n'est à l'origine d'aucun accident et du tarif orange pour un accident, du tarif rouge pour deux 
accidents, et refusé au-delà

De plus, pour encourager la fidélité des clients acceptés, la compagnie propose un contrat de la 
couleur immédiatement la plus avantageuse s'il est assuré depuis plus de cinq ans. 
Ainsi, s'il satisfait à cette exigence, un client normalement "vert" devient "bleu", un client 
normalement "orange" devient "vert", et le "rouge" devient orange.

Ecrire l'algorithme permettant de saisir les données nécessaires (sans contrôle de saisie) et de traiter ce 
problème. Avant de se lancer à corps perdu dans cet exercice, on pourra réfléchir un peu et s'apercevoir 
qu'il est plus simple qu'il n'en a l'air (cela s'appelle faire une analyse !)...

## Exercice 2.8 : Validité d'une date

Écrivez un algorithme qui demande à l'utilisateur de saisir 3 nombres entiers

1. Un numéro de jour
2. Un numéro de mois
3. Un numéro d'année

L'algorithme indique ensuite s'il s'agit ou non d'une date valide.

Cet exercice est certes d’un manque d’originalité affligeant, mais après tout, en algorithmique comme 
ailleurs, il faut connaître ses classiques ! Et quand on a fait cela une fois dans sa vie, on apprécie pleinement 
l’existence d’un type « Date » dans certains langages…).

Il n'est sans doute pas inutile de rappeler rapidement que le mois de février compte 28 jours, sauf si 
l’année est bissextile, auquel cas il en compte 29. 

L’année est bissextile si elle est divisible par quatre. Toutefois, les années divisibles par 100 ne sont pas bissextiles, mais les années divisibles par 400 le sont. **Ouf** !
