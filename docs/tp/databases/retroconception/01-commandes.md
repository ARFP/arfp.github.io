---
title: "Commandes"
serie: "retroconception"
order: 1
---

Exercice de rétroconception de base de données relationnelle.

## Travail à réaliser

- Analyser un domaine existant.
- Construire un modèle conceptuel des données à partir d'un modèle logique.


## Contexte 

**Soit le modèle logique suivant :**

Fournisseurs (<u>codeF</u>,nomF,adresse) 

Articles (<u>codeA</u>,nomA,type,#nomR) 

Ligne_bon_de_livraison (<u>#codeF,#codeA</u>,quantité) 

Rayon (<u>nomR</u>,etage) 

Employé (<u>codeEmpl</u>,nom,salaire,#nomR,#codEmpl_sup_hierarchique) 

> **Rappel :** 
>
> Donnée commençant par un `#` : clé etrangère 
>
> <u>Donnée soulignée</u> : composition de la clé primaire 


**Etablir le modèle conceptuel correspondant.**


> Valider votre travail avec vos formateurs avant de passer à la suite 
