---
title: "Exercices : MCD"
layout: default
serie: "merise"
order: 11
---

Cette série d’exercices peut être réalisée dans les contextes suivants :

- Se familiariser avec l'analyse d'un domaine existant.
- Modéliser une base de données

Vous vous aiderez des supports d'apprentissage fournis par vos formateurs.

**Pour chaque exercice de cette série :**

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)


## 1. Éditeur 

Un éditeur souhaite installer une base de données pour mémoriser les informations suivantes : 

-	Les livres sont identifiés par leur no ISBN. 
-	Un livre possède un titre et un prix de vente. 
-	Il est écrit par un ou plusieurs auteurs. 
-	Chaque livre est tiré en une ou plusieurs éditions, datées et identifiées par leur ordre (première édition, seconde édition, etc.). 
-	Chaque édition comporte un certain nombre d'exemplaires. 
-	Un livre peut être primé (Goncourt, Fémina etc...).
-	Les auteurs sont identifiés par leur nom et prénom et peuvent avoir un pseudonyme. 
-	Pour chaque livre, un auteur perçoit des droits d'auteur, calculés comme un pourcentage du prix de vente (il est aussi fonction du nombre d'auteurs, du tirage, etc.).
-	Les libraires (identifiés par leur nom et adresse complète) peuvent envoyer des commandes d'un ou plusieurs livres en quantité quelconque. 

## 2. Courses de chevaux

Un parieur assidu des champs de courses et des bases de données, voudrait mémoriser, dans une base de données relationnelle, les courses de chevaux, les paris qu'il a faits et les résultats. 

Plus précisément, il veut enregistrer les informations suivantes pour chaque course : 
 
- Le nom et la date (ex : Prix d'Amérique, 21-07-92)
- Le numéro, le nom chevaux partants
- Ses paris, avec pour chacun : 
    - Le type de pari (couplé, tiercé, quarté, quinté...).
        - Couplé = Pari sur 2 chevaux (1er et 2nd)
        - Tiercé = Pari sur 3 chevaux (1er, 2ème et 3ème)
        - Etc…
    - La somme jouée et les numéros de chevaux dans l'ordre du pari.

Une fois la course jouée, on enregistre aussi :
 
- Le résultat : l'ordre d'arrivée des chevaux.
- Le gain total du parieur pour la course (couplé = somme jouée x 2, tiercé = somme jouée * 3, etc…). 

Les noms de chevaux sont uniques et les noms de courses sont uniques (à un instant donné). 


## 4. Club Vidéo 

Dix magasins de location de cassettes vidéo se sont regroupés pour mettre en commun les cassettes dont ils disposent et ont fondé un club de location. À la suite d'une rencontre avec les représentants de ce club, il ressort que chaque point de vente disposera d'un terminal clavier-écran relié à un site central et qu'il faudra pouvoir prendre en compte les éléments suivants : 

- Un client qui s'inscrit au club verse une caution. 
- Suivant le montant de cette caution il aura le droit d'emprunter en même temps de 1 à 6 cassettes.
- Les cassettes empruntées doivent être retournées dans sous 3 jours dans n'importe quelle boutique du club.
- Plusieurs cassettes peuvent contenir le même film.
- Un film est rattaché à un genre cinématographique (nom et type de public) et est caractérisé par sa durée, son réalisateur et la liste des acteurs principaux.
- Une location n'est permise que si le client est en règle (pas de dépassement du nombre d'emprunts maximum, pas de cassette en retard).
- La consultation d'un client permettra d'obtenir son nom, son adresse, son nombre d'emprunts en cours, la liste des numéros de cassettes et des titres qu'il a actuellement empruntés.
- La consultation d'un genre permettra d'obtenir la liste des films de ce genre disponibles dans le magasin.
- Périodiquement, on veut obtenir la liste des retardataires ; on veut pour chaque cassette non retournée à temps les informations suivantes : 
    - Nom, adresse du client, date de l'emprunt, numéro(s) de cassette et titre du (des) film(s) concerné(s).
- On veut pouvoir connaître pour chaque cassette (identifiée par une numérotation commune aux dix magasins) où elle est, quand elle a été mise en service, quel film y est enregistré, combien de fois elle a déjà été louée, et quel est son état (de très bon à mauvais). 


## 5. Aéroport 

Pour les besoins de la gestion d'un aéroport on souhaite mémoriser dans une base de données les informations nécessaires à la description des faits suivants : 

- Chaque avion géré est identifié par un numéro d'immatriculation. 
- Il est la propriété soit d'une société, soit d'un particulier.

Dans les deux cas on doit connaître : 
- Le nom, l'adresse et le numéro de téléphone du propriétaire, ainsi que la date d'achat de l'avion.

Chaque avion est d'un certain type, celui-ci étant caractérisé par son nom, le nom du constructeur, la puissance du moteur, le nombre de places.

La maintenance des avions est assurée par les mécaniciens de l'aéroport : 
- Par sécurité, les interventions sont toujours effectuées par deux mécaniciens (l'un répare, l'autre vérifie). 
- Pour toute intervention effectuée, on conserve l'objet de l'intervention, la date et la durée. 
- Pour chaque mécanicien on connaît son nom, son adresse, son numéro de téléphone et les types d'avion sur lesquels il est habilité à intervenir. 

Un certain nombre de pilotes sont enregistrés auprès de l'aéroport pour chaque pilote on connaît : 
- Son nom, son adresse, son numéro de téléphone, son numéro de brevet de pilote
- Les types d'avion qu'il est habilité à piloter avec le nombre total de vols qu'il a effectué sur chacun de ces types. 


*Pour vous aider à établir certaines règles, voici une série de questions types auxquelles l'application doit pouvoir répondre :*

-	Liste des avions de la société "XXX".
-	Liste des avions propriété de particuliers. 
-	Durée totale des interventions faites par le mécanicien Durand au mois d'août. 
-	Liste des avions de plus de 4 places, avec le nom du propriétaire. 
-	Liste des interventions (objet, date) faites sur l'avion numéro « 3242XZY78K3 ». 


 
## 6. Inventaire des œuvres d'art 

Les musées d'art veulent constituer une base de données commune des œuvres d'art qu'ils possèdent. 

Actuellement le conservateur de chaque musée garde, pour chaque œuvre, les informations suivantes : 
-	Type (peinture, collage, sculpture, lithographie, etc…).
-	Titre.
-	Année.
-	Nom de(s) artiste(s).
-	Matière(s).
-	Dimensions.
-	Courant artistique (impressionnisme, cubisme, etc.) auquel elle appartient s'il est défini (certaines œuvres sont inclassables).
-	Et éventuellement le numéro de l'exemplaire possédé par le musée (certains types d'œuvres comme les lithographies et les sculptures en bronze sont tirées en plusieurs exemplaires, le musée ne possède alors pas l'œuvre, mais tel exemplaire de l'œuvre). 

En plus, certains conservateurs se sont constitués des fiches techniques décrivant : 

- Les principaux courants artistiques : 
    - Nom du courant, période (année de début, année de fin)
- Texte descriptif.
- Les artistes : 
    - Nom, prénom, nationalité, date de naissance, éventuellement date de décès
    - Les courants auxquels ils ont participé par ses œuvres


Ils veulent aussi mettre ces fiches en commun dans la base de données. 

Cette base de données devra permettre de répondre à des questions du type : 

- Où est telle œuvre de tel(s) artiste(s) (nom, ville du musée) ? 
- Dans le cas d'une œuvre à exemplaires : 
    - Liste des musées conservant un exemplaire de l'œuvre.
- Liste (titre, année) des œuvres crées par tel artiste. 
- À quels courants a participé tel artiste ? 
- Où sont les œuvres de tel courant artistique (nom, ville du musée) ? 
- Liste des titres et des noms de(s) artiste(s) des œuvres d'un musée.
- Renseignements sur tel artiste (information sur l'artiste et liste de ses œuvres).
- Renseignements sur tel courant artistique (artistes, descriptif…). 
