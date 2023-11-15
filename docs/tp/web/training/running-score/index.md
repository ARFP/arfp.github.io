---
title: "Course à pied"
serie: "training"
order: 2
--- 
<style>
    h1 { 
    page-break-before: always;
  }
    </style>

Vous avez la mission de développer un logiciel de visualisation de résultats des épreuves du 10000 mètres à pied.

On vous fournit un document JSON contenant le résultat d'une épreuve du 10000 mètres. 

```js 
[
    {
        "nom": "Grande Léo",
        "pays": "France",
        "temps": 1742
    }
]
```

> Le temps correspond au score du participant et est exprimé en secondes.

1. Créer un répertoire pour votre projet.
2. Créer un fichier **index.html** et y insérer la structure HTML standard.
3. Copier le code JSON ci-dessus et insérer le dans un fichier **resultat10000metres.json**
4. Implémentez le code nécessaire aux fonctionnalités et captures présentées ci-après.

**Couleurs à utiliser :**
```css 
:root {
    --color1: #30343F;
    --color2: #FAFAFF;
    --color3: #E4D9FF;
    --color4: #374479;
    --color5: #6E7799;
    --color6: #C490D1;
}
```

# Étape 1

Au démarrage, l'application charge les données JSON et les affiche sous forme de tableau.
Les données sont triées par **temps** du plus petit au plus grand.

A la suite du tableau, ajouter dans cet ordre : 
- Le nombre d'étudiants affichés dans le tableau
- La note moyenne 
- Le nombre d'étudiants au dessus de la moyenne

![capture 1](./img/running-score-2.png)

# Étape 2

L'évaluation prévoit une note élminatoire fixée à 12/20. Les étudiants sous cette note ont échoué à l'évaluation.

1. Ajouter cette information en bas de page.
2. Ajouter au tableau, une colonne indiquant si l'étudiant a obtenu ou non l'évaluation.

![capture 1](./img/class-grade-3.png)

# Étape 3

Sous le titre principal, Ajouter un formulaire permettant à l'évaluateur d'ajouter un étudiant à la liste.

![capture 1](./img/class-grade-4.png)

# Contrôles de saisie 

L'étudiant ajouté apparaît dans le tableau. Les statistiques sous le tableau doivent toujours correspondre à l'état actuel du tableau.

![capture 1](./img/class-grade-5.png)

Vous vous devez de vérifier les données saisies :
- Le nom contient au minimum 2 lettres
- Le prénom contient au minimum 2 lettres
- La note doit être comprise entre 0 et 20

Le champ "Nom Prénom" doit être insensible à la casse. Vous prendrez soin de formatter le nom et prénom (un nom commence par une majuscule suivie de minuscules. Idem pour le prénom).


Bonne chance ;)
