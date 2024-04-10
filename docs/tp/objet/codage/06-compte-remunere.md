---
title: "Compte rémunéré"
order: 6
serie: "codage"
---

# Modéliser et coder

**Prerequis :** Avoir terminé l'exercice [Banque](./04-banque)

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Notions d’héritage

# Contexte 

A la banque, il y a des comptes classiques, des comptes permettant les découverts, des comptes rémunérés, etc..​.

Vous avez actuellement codé un compte permettant les découverts mais ce n’est pas toujours le cas.​

Proposez une réorganisation de votre conception UML de la vision des comptes permettant de différencier ces trois types de comptes. 

**Définition d’un compte rémunéré :**

- Un compte rémunéré possède un numéro, un nom d'utilisateur, un solde, un découvert autorisé. Tous le comptes rémunérés sont soumis au même taux de rémunération; par ailleurs pour calculer à tout moment les intérêts produits, il est nécessaire de connaître la date d'ouverture du compte rémunéré.​

- Lorsque le compte rémunéré est interrogé sur son solde, la valeur retourné est  le solde plus les intérêts.​

- On peut débiter ou créditer ces comptes ainsi que transférer d'un compte à un autre; un compte peut comparer son solde avec le solde d'un autre compte.​

- Chaque compte peut afficher ses informations. Enfin chaque compte rémunéré peut retourner les intérêts produits. 

---

Tous les comptes doivent être capable de générer un nom de compte à partir de son numéro, de son type et des 3 premières lettres du nom du propriétaire.​

- CD 134672144687 DUP​
- CC 846134621666 MAR​
- CR 256798314779 THY​

Pour réaliser ce comportement, est il préférable de choisir une méthode abstraite ou virtuelle ?​

---

Tous comptes, produits bancaires (livrets, assurances vies, produits boursiers), crédits ont des frais de clôture. Les règles de calculs de ces frais sont propres à chacun, et ces différentes offres fournissent aux clients n’ont rien de commun, à part qu’ils ont un propriétaire. ​

Comment peut-on prendre en compte dans notre modèle le calcul des frais de clôture de compte ?​

> Valider votre travail avec vos formateurs.
