---
title: Codes postaux
serie: "frontend"
order: 20
---

## Recherche de villes / codes postaux

Créer une page web simple contenant un titre, un champ de type "search" et un bouton de validation.

Le formulaire permet de rechercher les informations d'une ou plusieurs villes. 

Ces informations sont stockées dans le fichier "[zipcodes.json](zipcodes.json)" et doivent être chargées avec l'[API "fetch"](https://developer.mozilla.org/fr/docs/Web/API/Fetch_API) de Javascript.

L'utilisateur peut saisir un code postal ou le nom d'une ville. 

Durant la saisie, chaque ville correspondant à la recherche est affichée sous forme de suggestion.

Pour les suggestions, vous utiliserez l'élément datalist :
- [https://developer.mozilla.org/fr/docs/Web/HTML/Element/datalist](https://developer.mozilla.org/fr/docs/Web/HTML/Element/datalist)

Le bouton de validation permet d'afficher les informations complètes de la ou les villes sélectionnée (dans un div par exemple).

Note: aucune mise en page CSS n'est nécessaire pour cet exercice.
