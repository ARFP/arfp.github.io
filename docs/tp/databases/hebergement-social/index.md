---
title: "TP Hébergement Social"
layout: default
serie: "merise"
order: 120
---


Une association gère un centre de réinsertion sociale pour jeunes adultes pouvant héberger 50 résidents au maximum. 

L’ association souhaite informatiser sa gestion. 

Le centre est administré par :
- 1 directeur
- des employés (cuisiniers, techniciens...)
- des intervenants (éducateurs, médecins)

Lorsque qu'un nouveau résident est enregistré, une fiche individuelle d'identité est établie (nom, prénom, date de naissance, date d'arrivée). On y notera plus tard sa date de départ. Un numéro de chambre est ensuite attribué au nouvel arrivant.  

A l’issue d'une visite médicale, il peut être décidé que le résident soit suivi par un médecin. Sa fiche individuelle est alors complétée avec les informations sur ses besoins médicaux. Le suivi médical est assuré par des médecins de la région. Un médecin peut suivre 10 résidents au maximum. 

Chaque semaine, les éducateurs proposent des activités et ateliers. Il existe plusieurs types d'activités dont la cuisine, le bricolage, le théatre, le sport, une soirée film, etc...

Une activité est référencée par son intitulé, un créneau horaire (date, heure début, heure de fin) et un nombre de participants minimum et maximum. Le nombre de participants ne peut être ni inférieur à 3 ni supérieur à 20.

Pour chaque activité, on doit connaitre le nom du ou des éducateurs qui animent l'activité ainsi que l'état de l'activité : 
- ouvert, terminé, annulé.

Deux activités peuvent avoir lieu au même moment si elles son animées par des éducateurs différents.

Les résidents peuvent s'inscrire à une ou plusieurs activités et bien entendu, ne peuvent pas s'inscrire à 2 activités si elles se déroulent au même moment.

---

Pour toute personne enregistrée dans le système on doit connaître le *nom*, le *prénom* et la *date de naissance*.

Les employés peuvent possèder les rôles : *directeur, gardien, cuisinier, technicien*.

Les intervenants peuvent posséder les rôles : *éducateur, médecin*.

Les résidents possèdent le rôle : *résident*.

*Rappel : Pour les résidents, on doit connaitre la date d'arrivée et de départ ainsi que les éventuels besoins médicaux.*

---




## Consignes

Vous devez modéliser la base de données du centre d'hébergement. 

Vous réaliserez ce projet en 3 étapes : 

1. Gestion du personnel et des intervenants.
2. Ajout de la gestion des fiches individuelles et suivis médicaux.
3. Ajout de la gestion des activités et des inscriptions.

*Vous devez valider chaque version avec votre formateur avant de passer à la suivante.*

Pour chaque version vous devrez :

1. Compléter le dictionnaire des données.
2. Compléter le Modèle Conceptuel des Données.
3. Compléter le Modèle Logique des Données.
4. Implémenter les scripts SQL de création/mise à jour de la base de données
5. Implémenter les requêtes SQL demandées.
6. Implémenter les déclencheurs et procédures stockées demandés.

--- 

## Version 1

**Gestion du personnel et des intervenants.**

Créer le dictionnaire des données, le MCD, le MLD correspondant uniquement à la gestion des employés et des intervenants.

Créer le script SQL de création des tables.

Ajouter :
- 1 directeur
- 1 cuisinier
- 1 technicien
- 2 gardiens
- 3 médecins
- 4 éducateurs

**Requêtes SQL à implémenter :**

1. Sélectionner tous les éducateurs.
2. Sélectionner tous les employés autre que le directeur.
3. Sélectionner toutes les personnes triées par rôle puis par nom.
4. Sélectionner tous les rôles avec le nombre de personnes associées à chaque rôle.

***Contraintes et cas particuliers***

Implémenter les contraintes suivantes :

1. Il ne peut y avoir qu'un seul directeur dans le système.

> Valider votre travail avec votre formateur avant de passer à la suite.

---

## Version 2 

**Ajout de la gestion des fiches individuelles et suivis médicaux.**

Compléter le système pour y inclure les résidents et la gestion des fiches individuelles et suivis médicaux.

Créer le script SQL de mise à jour des tables. Ce script SQL doit METTRE A JOUR le système sans écraser les données existantes.

- Ajouter 10 résidents.
- Associer : 
    - 1 médecin à 2 résidents.
    - 1 autre médecin à un autre résident.

**Requêtes SQL à implémenter :**

1. Sélectionner tous les résidents *actifs* du plus jeune au plus âgé.
2. Sélectionner tous les résidents suivis par un médecin avec nom et prénom du médecin attitré.
3. Sélectionner tous les médecins avec le nombre de résidents qu'il suivent.

**Contraintes et cas particuliers :**

Implémenter les contraintes suivantes :

1. Un médecin peut suivre au maximum 10 résidents.
2. Un résident ne peut pas être supprimé. Lorsque la date de départ d'un résident est renseignée, il est considéré *inactif* car il n'est plus hébergé dans le centre. Les résidents dont la date de départ n'est pas renseignée sont considérés *actifs*.
2. Il ne peut y avoir que 50 résidents et il doit y avoir au minimum 2 gardiens pour 15 résidents actifs.
    - Ces vérifications doivent être faites à l'ajout d'un nouveau résident.

> Valider votre travail avec votre formateur avant de passer à la suite.

---

## Version 3

**Ajout de la gestion des activités et des inscriptions.**

Compléter le système pour y inclure les activités et la gestion des inscriptions.

Créer le script SQL de mise à jour des tables. Ce script SQL doit METTRE A JOUR le système sans écraser les données existantes.

Ajouter :
- 2 scéances de sport
- 1 soirée "jeux vidéos"
- 2 sorties cinéma
- 1 atelier théatre
- 3 ateliers "CV"


**Requêtes SQL à implémenter :**

1. Sélectionner les activités en cours.
2. Sélectionner les activités dont le nombre d'inscriptions a atteint le maximum.
3. Sélectionner les activités dont le nombre d'inscriptions est inférieur au minimum requis.
4. Sélectionner les activités dont le nombre de places disponibles est inférieur au quart du maximum.
5. Sélectionner les activités futures avec le nombre d'inscrits par activité.

*Note: vous devrez inscrire des résidents à des activités pour tester vos requêtes.*

**Contraintes et cas particuliers :**

Implémenter les contraintes suivantes :

1. Lors d'une inscription d'un résident à une activité :
    - Le résident doit être actif.
    - Le résident ne doit pas déjà être inscrit à cette activité.
    - Le résident ne doit pas être inscrit à une activité au même horaire.
    - il doit rester des places disponibles pour cette activité.
2. A la mise à jour d'une activité : 
    - Si le maximum de participants a été modifié et que la nouvelle valeur est inférieure aux nombres d'inscrits :
        - nouvelle valeur = nombre d'inscrits
3. A la suppression d'une activité :
    - Si le nombre d'inscriptions est supérieur à zéro, refuser la suppression.

**Procédures stockées**

Implémenter les procédures stockées suivantes :

1. Supprimer toutes les activités passées dont le nombre de participants n'a pas atteint le minimum requis.
2. Reporter de 1 journée les activités du jour correspondant aux critères suivants :
    - le nombre de résidents inscrits est strictement égal au minimum requis moins 1. 
    - une activité du même type n'a pas lieu le jour suivant.
