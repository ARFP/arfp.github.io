---
title: "Paiement Cantine"
serie: "retroconception"
order: 3
---

Exercice de rétroconception de base de données relationnelle.

## Travail à réaliser

- Analyser un domaine existant.
- Construire un modèle logique des données à partir d'un modèle physique.
- Construire un modèle conceptuel des données à partir d'un modèle logique.


## Contexte 

**Soit le modèle physique suivant représentant les paiements des stagiaires avec leur carte lors du repas :**

```sql
/* MYSQL / MARIADB */
CREATE TABLE stagiaires(
   stagiaire_id INT AUTO_INCREMENT,
   stagiaire_nom VARCHAR(50) NOT NULL,
   stagiaire_prenom VARCHAR(50) NOT NULL,
   stagiaire_solde_carte DECIMAL(5,2) NOT NULL,
   PRIMARY KEY(stagiaire_id)
);

CREATE TABLE transactions(
   transaction_id INT,
   transaction_date DATETIME NOT NULL,
   transaction_montant DECIMAL(5,2),
   transaction_stagiaire_id INT NOT NULL,
   PRIMARY KEY(transaction_id),
   FOREIGN KEY(transaction_stagiaire_id) REFERENCES stagiaires(stagiaire_id)
);

```

**Etablir le modèle logique et le modèle conceptuel correspondants.**


> Valider votre travail avec vos formateurs avant de passer à la suite 
