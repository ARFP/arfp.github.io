---
title: "Buveurs"
serie: "retroconception"
order: 2
---

Exercice de rétroconception de base de données relationnelle.

## Travail à réaliser

- Analyser un domaine existant.
- Construire un modèle conceptuel des données à partir d'un modèle logique.


## Contexte 

**Soit le modèle logique suivant :**

buveurs(<u>num_buv</u>,nom_buv, prénom_buv, ville_buv) 

commandes(<u>num_com</u>, date, #num_buv) 

lignes_de_commandes(<u>#num_vin, #num_com</u>, quantité ) 

vins(<u>num_vin</u>, cru, millésime, #num_vig) 

vignerons(<u>num_vigneron</u>, nom_vig, prénom_vig, ville_vig) 

ressentis_vignerons_entre_eux (<u>#num_vigneron-juge, #num_vigneron-jugé</u>, critère_appréciation) 


> **Rappel :** 
>
> Donnée commençant par un `#` : clé etrangère 
>
> <u>Donnée soulignée</u> : composition de la clé primaire 


**Etablir le modèle conceptuel correspondant.**


> Valider votre travail avec vos formateurs avant de passer à la suite 
