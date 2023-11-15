---
title: Codes postaux
serie: "vuejs"
order: 1
---

## Recherche de villes / codes postaux

Créer une page web simple contenant un titre, un champ de type "search" et un bouton de validation.

Le formulaire permet de rechercher les informations d'une ou plusieurs villes. 

Ces informations sont stockées dans le fichier "[zipcodes.json](zipcodes.json)" et doivent être chargées avec l'[API "fetch"](https://developer.mozilla.org/fr/docs/Web/API/Fetch_API) de Javascript.

L'utilisateur peut saisir un code postal dans le champs de recherche. 

A la saisie, une liste de suggestions de villes correspondantes est affichée.

Par exemple, si l'utilisateur saisit `59`, toutes les villes dont le code postal contient `59` sont affichées dans les suggestions.

Pour les suggestions, vous utiliserez l'élément datalist :
- [https://developer.mozilla.org/fr/docs/Web/HTML/Element/datalist](https://developer.mozilla.org/fr/docs/Web/HTML/Element/datalist)

Le bouton de validation permet d'afficher les informations complètes de la ville sélectionnée (dans un div par exemple).

Note: aucune mise en page CSS n'est nécessaire pour cet exercice.
