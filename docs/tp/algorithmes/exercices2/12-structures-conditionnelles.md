---
title: "Les conditions #2"
level: 4
order: 2
serie: "exercices2"
---

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Les structures conditionnelles

## Exercice 2.6 : Bisextille

Ecrire un algorithme qui détermine si une année est bissextile. 

Les années bissextiles sont :
- les années divisibles par 400.
- les années divisibles par 4 mais non divisibles par 100


## Exercice 2.7 : Validité d'une date

Écrivez un algorithme qui demande à l'utilisateur de saisir 3 nombres entiers

1. Un numéro de jour
2. Un numéro de mois
3. Un numéro d'année

L'algorithme indique ensuite s'il s'agit ou non d'une date valide.

Il n'est sans doute pas inutile de rappeler que le mois de février compte 28 jours, sauf si l’année est bissextile, auquel cas il en compte 29. 


## Exercie 2.8 : Élections

Les élections législatives, en Guignolerie Septentrionale, obéissent à la règle suivante :
- Lorsque l'un des candidats obtient plus de 50% des suffrages, il est élu dès le premier tour.
- En cas de deuxième tour, peuvent participer uniquement les candidats ayant obtenu au moins 12.5% des voix au premier tour.

Vous devez écrire un algorithme qui permet la saisie des scores de quatre candidats au premier tour. 

Cet algorithme traitera ensuite uniquement le 1er candidat saisi et affichera : 
- s'il est élu (plus de 50% des voix)
- s'il est battu (moins de 12.5% des voix)
- s'il se trouve en ballottage 
    - favorable (il participe au second tour en étant arrivé en tête à l'issue du premier tour).
    - défavorable (il participe au second tour sans avoir été en tête au premier tour).

### Exercice 2.8.1

## Exercice 2.9 : Tarif Assurance

Une compagnie d'assurance automobile propose à ses clients quatre familles de tarifs identifiables par une 
couleur, du moins au plus onéreux : 

- Tarifs **bleu**, **vert**, **orange** et **rouge**. 

**Le tarif dépend de la situation du conducteur :**

- **Un conducteur** de moins de 25 ans et titulaire du permis depuis moins de deux ans, se voit attribuer 
le tarif rouge, si toutefois il n'a jamais été responsable d'accident. Sinon, la compagnie refuse de 
l'assurer.

- **Un conducteur** de moins de 25 ans et titulaire du permis depuis plus de deux ans, ou de plus de 25 
ans mais titulaire du permis depuis moins de deux ans a le droit au tarif orange s'il n'a jamais 
provoqué d'accident, ou le tarif rouge s'il a été repsonsable d'un accident, sinon il est refusé.

- **Un conducteur** de plus de 25 ans titulaire du permis depuis plus de deux ans bénéficie du tarif vert 
s'il n'est à l'origine d'aucun accident et du tarif orange pour un accident, du tarif rouge pour deux 
accidents, et refusé au-delà

De plus, pour encourager la fidélité des clients acceptés, la compagnie propose un contrat de la 
couleur immédiatement la plus avantageuse s'il est assuré depuis plus de cinq ans. 
Ainsi, s'il satisfait à cette exigence, un client normalement "vert" devient "bleu", un client 
normalement "orange" devient "vert", et le "rouge" devient orange.

Ecrire l'algorithme permettant de saisir les données nécessaires (sans contrôle de saisie) et de traiter ce 
problème. Avant de se lancer à corps perdu dans cet exercice, on pourra réfléchir un peu et s'apercevoir 
qu'il est plus simple qu'il n'en a l'air (cela s'appelle faire une analyse !)...


## Exercice 2a.5 : Ma bicyclette

Réalisez l’algorithme et le programme correspondant au texte ci-dessous : 

S'il fait beau demain, j'irai faire une balade à bicyclette. 

Je n'ai pas utilisé ma bicyclette depuis plusieurs mois, peut-être n'est-elle plus en parfait état de fonctionnement.

Si c'est le cas, je passerai chez le garagiste avant la balade. J'espère que les réparations seront immédiates sinon je devrai renoncer à la balade en bicyclette. Comme je veux de toute façon profiter du beau temps, si mon vélo n'est pas utilisable, j'irai à pied jusqu'à l'étang pour cueillir les joncs.

S'il ne fait pas beau, je consacrerai ma journée à la lecture. J'aimerais relire le 1er tome de Game of Thrones. Je pense posséder ce livre, il doit être dans la bibliothèque du salon. 

Si je ne le retrouve pas, j'irai l’emprunter à la bibliothèque municipale. Si le livre n'est pas disponible, j'emprunterai un roman policier. 

Je rentrerai ensuite directement à la maison.

Dès que j'aurai le livre qui me convient, je m'installerai confortablement dans un fauteuil et je me plongerai dans la lecture.
