---
title: "Panier de fruits"
order: 10
serie: "modelisation"
---

## Partie 1

Codez le diagramme de classes suivant dans le langage indiqué par vos formateurs. 

/!\ Respectez la typo. 

---

![diagram](img/basket-class-diagram.png)

---

## Partie 2 

Implémenter ensuite un programme simple contenant 2 clients.

- Le panier du 1er client contient 2 pommes dont 1 est `label rouge` et 1 poire verte.
- Le panier du 2nd client contient 1 pomme, 1 poire verte et 1 poire jaune.
- Prix d'une pomme : 0.29 
- Prix d'une poire : 0.39
- Si le fruit est `label rouge`, le prix initial est augmenté de 20%.

Le programme affiche pour chaque client : 

"Le prix total du panier du client `Customer.getClientId()` est égal à `Customer.getBasket().getTotalPrice()`."


Note: Ajouter les opérations qui vous paraissent nécessaires.