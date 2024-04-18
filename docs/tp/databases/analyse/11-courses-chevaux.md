---
title: "Courses de chevaux"
module: "databases"
serie: "analyse"
order: 11
---

Exercice de modélisation de base de données relationnelle.

## Travail à réaliser

- Identifiez les règles de gestion
- Formalisez le dictionnaire des données
- Répérez les dépendances fonctionnelles
- Modélisez le diagramme *entité-association* (MCD)

## Contexte 

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


> Validez vore travail avec vos formateurs avant de passer à la suite
