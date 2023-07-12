---
title: "La machine à voter"
order: 104
---

Votre mission consiste à concevoir une machine à voter ! 

Analyser la demande ci-dessous puis, dans cet ordre :

1. Modéliser et créer la base de données relationnelle répondant au besoin
2. Développer le logiciel d'administration permettant la gestion des sessions de votes 
    - Le logiciel d'administration respecte l'architecture MVC
3. Développer le logiciel client : la machine à voter
    - Le logiciel client est une SPA et se connecte à la base de données via une API Rest

--- 

## Contexte 

L'élection est un modèle largement utilisé pour sélectionner les représentants d'une institution.

Cette méthode de sélection fonctionne sur un principe simple :

1. Une institution a besoin de représentants.
2. Des candidats se font connaître et font campagne.
3. Tous les membres de l'instituion votent.
4. Selon le cas, un ou plusieurs candidats sont élus en 1 ou 2 tours. 

D’ordinaire, les électeurs et électrices se rendent au bureau de vote, prennent une enveloppe et des bulletins sur lesquels figurent les noms des candidats et candidates, puis se rendent dans un isoloir. Ils font alors leur choix et ensuite glissent l’enveloppe dans une urne prévue à cet effet. Le tout, sous la supervision des membres du bureau de vote.

Dans le cas d’une machine à voter, c’est presque la même chose sauf qu’il n’y a ni bulletin ni enveloppe. Une machine à voter est placée dans un isoloir (afin que la personne puisse se soustraire aux regards extérieurs) et le vote consiste à suivre les instructions indiquées sur l’écran. Pour voter, ll faut se servir du clavier/souris ou de l'écran s'il est tactile. De plus, la machine à voter sert d’urne et est directement connectée à une base de données où les votes sont enregistrés.


Votre mission, si vous l'acceptez, est de concevoir le logiciel d'une machine à voter.


## Règles de gestion et d'organisation 

Le logiciel centralise un certain nombre d'informations.

Pour chaque session de vote, le système doit enregistrer : 
- Un identifiant numérique 
- Le nombre de tours de vote (1 ou 2).
- Le nombre de représentants à élire.
- l'identité des candidats (id, nom, prénom, slogan). 
- le statut de la session de vote : à venir, active ou terminée

Note : Une session de vote avec le statut "terminée" ne peut être supprimée.



## Base de données 

Modéliser et créer la base de données relationnelle. 


## Le logiciel d'aministration 

Développer le logiciel permettant l'administration du système :

1. Gestion des candidats
2. Gestion des sessions de votes
3. Export des résultats de vote au format JSON

Le logiciel doit obligatoirement respecter l'architecture MVC.

Fonctionnement au démarrage de l'application : 

1. L'accueil affiche un formulaire d'identification.
2. L'administrateur s'identifie.
    - En cas d'erreur d'identification : 
        - Afficher un message d'erreur
        - Recommenrcer à l'étape 1
3. La liste des sessions de vote existantes est affichée 
    - Les sessions sont classées en 2 catégories :
        - active ou terminée

Une fois identifié, l'administrateur peut : 
- Ajouter, modifier ou supprimer une session de vote 
- Ajouter, modifier ou supprimer des candidats


## API 

Développer l'API qui sera utilisée par le logiciel client.


## Le logiciel client 

C'est la machine à voter. 

Fonctionnement : 

1. La page d'accueil affiche la liste des candidats de la session en cours.
2. L'utilisateur clique sur un candidat pour exprimer son vote.
3. Le logiciel demande confirmation du vote.
4. L'utilisateur confirme.
    - (Retour à l'étape 1 si l'utilisateur ne confirme pas).
5. La machine afiche un message de remerciement.
6. Au bout de 10 secondes, retour à l'étape 1.

---




## Le back-office

