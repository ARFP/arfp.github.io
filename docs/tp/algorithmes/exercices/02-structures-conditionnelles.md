---
title: "Structures conditionnelles"
level: 4
order: 2
---


# 📘 Support + Exercices + Corrigés — Conditions (if / else)

**REAC 2023 – DWWM / CDA**  
**Environnement : Node.js 20+ (console)**

---

## 🎯 Compétences visées

- Utiliser les structures conditionnelles (`if`, `else`, `else if`)
- Comparer des valeurs (`>`, `<`, `===`)
- Gérer des cas métiers simples

---

## ⚙️ Pré-requis

```bash
npm install prompt-sync
```

```javascript
const prompt = require('prompt-sync')();
```

***

# 🧪 Exercice 2.1 — Positif ou négatif

## 🛠️ Consignes

1. Demande un nombre
2. Vérifie s’il est positif ou négatif
3. Affiche le résultat

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const n = Number(prompt("Nombre : "));

if (n >= 0) {
  console.log("Positif");
} else {
  console.log("Négatif");
}
```

***

# 🧪 Exercice 2.2 — Signe du produit

## 🛠️ Consignes

1. Demande deux nombres
2. Détermine si leur produit est positif ou négatif

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const a = Number(prompt("A : "));
const b = Number(prompt("B : "));

if (a * b >= 0) {
  console.log("Produit positif");
} else {
  console.log("Produit négatif");
}
```

***

# 🧪 Exercice 2.3 — Trier 2 nombres

## 🛠️ Consignes

1. Lire A et B
2. Afficher dans l’ordre croissant

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const a = Number(prompt("A : "));
const b = Number(prompt("B : "));

if (a < b) {
  console.log(a, b);
} else {
  console.log(b, a);
}
```

***

# 🧪 Exercice 2.4 — Être majeur

## 🛠️ Consignes

1. Lire un âge
2. Gérer : négatif, mineur, majeur

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const age = Number(prompt("Âge : "));

if (age < 0) {
  console.log("Vous n'êtes pas encore né");
} else if (age < 18) {
  console.log("Vous êtes mineur");
} else {
  console.log("Vous êtes majeur");
}
```

***

# 🧪 Exercice 2.5 — Retraite

## 🛠️ Consignes

1. Lire un âge
2. Afficher situation par rapport à 62 ans

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const age = Number(prompt("Âge : "));

if (age < 0) {
  console.log("Âge invalide");
} else if (age < 62) {
  console.log(`Il reste ${62 - age} années`);
} else if (age === 62) {
  console.log("C'est le moment de prendre sa retraite");
} else {
  console.log(`Retraité depuis ${age - 62} années`);
}
```

***

# 🧪 Exercice 2.6 — Catégorie sport

## 🛠️ Consignes

1. Lire un âge
2. Déterminer catégorie

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const age = Number(prompt("Âge : "));

if (age < 5) console.log("Trop jeune");
else if (age <= 10) console.log("Débutant");
else if (age <= 14) console.log("Junior");
else if (age <= 17) console.log("Espoir");
else console.log("Adulte");
```

***

# 🧪 Exercice 2.7 — Trier 3 nombres

## 🛠️ Consignes

1. Lire A, B, C
2. Trier décroissant

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

let a = Number(prompt("A : "));
let b = Number(prompt("B : "));
let c = Number(prompt("C : "));

let tab = [a, b, c];
tab.sort((x, y) => y - x);

console.log(tab);
```

***

# 🧪 Exercice 2.8 — Heure + 3 minutes

## 🛠️ Consignes

1. Lire heure et minutes
2. Vérifier validité
3. Ajouter 3 minutes

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

let h = Number(prompt("Heure : "));
let m = Number(prompt("Minutes : "));

if (h < 0 || h > 23 || m < 0 || m > 59) {
  console.log("Données invalides");
} else {
  m += 3;

  if (m >= 60) {
    m -= 60;
    h += 1;
  }

  if (h === 24) h = 0;

  console.log(`Nouvelle heure : ${h}h${m}`);
}
```

***

# 🧪 Exercice 2.9 — Réprographie

## 🛠️ Consignes

1. Lire nombre copies
2. Calculer prix selon paliers

## ✅ Corrigé

```javascript
const prompt = require('prompt-sync')();

const n = Number(prompt("Copies : "));
let total = 0;

if (n <= 10) {
  total = n * 0.10;
} else if (n <= 30) {
  total = 10 * 0.10 + (n - 10) * 0.09;
} else {
  total = 10 * 0.10 + 20 * 0.09 + (n - 30) * 0.08;
}

console.log(`Total : ${total} €`);
```

***

# ✅ Résumé

* ✅ Utiliser `if / else`
* ✅ Tester plusieurs cas
* ✅ Gérer les entrées invalides

***

# ✅ Check apprenant

* [ ] Je comprends les conditions
* [ ] Je sais utiliser `if / else`
* [ ] Je sais gérer plusieurs cas



---

## 💡 Feedback rapide (important pour la suite)

Très bon chapitre 👍  
👉 logique + progressif + exploitable en reconversion

### 🔥 Amélioration recommandée (si tu veux passer niveau premium)
- ajouter **indices progressifs**
- ajouter **version sans corrigé**
- ajouter **évaluation REAC**

---

## 🚀 Suite logique

👉 prochain module : **boucles (`for`, `while`)**

Je peux te faire :
- support complet
- exercices progressifs
- corrigés
- mini TP (console app)

Dis-moi 👍


