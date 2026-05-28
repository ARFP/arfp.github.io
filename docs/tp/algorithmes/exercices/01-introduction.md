---
title: "Exercices d'introduction"
level: 4
order: 1
---

# 🧪 Variables, calculs et entrées utilisateur

**Version pédagogique adaptée (REAC 2023 – DWWM / CDA)**  
**Environnement cible : Node.js 20+ (console)**

---

## 🎯 Compétences visées

- Manipuler des **variables**
- Utiliser des **entrées utilisateur**
- Travailler avec des **chaînes de caractères**
- Réaliser des **calculs simples**

---

# 🧪 Exercice 1.1 — Afficher un message

### 🎯 Objectif pédagogique
Afficher du texte dans la console

### 📘 Contexte
Tu développes un premier programme de test pour vérifier que ton environnement fonctionne.

### 🛠️ Consignes

1. Crée un fichier `app.js`
2. Affiche le message : `Hello World !`

### ✅ Critères de réussite

- [ ] Le programme s’exécute sans erreur
- [ ] Le texte s’affiche correctement dans la console

### 💻 Exemple

```javascript
console.log("Hello World !");
```

***

# 🧪 Exercice 1.2 — Dire bonjour à l’utilisateur

### 🎯 Objectif pédagogique

Lire une entrée utilisateur et afficher un message personnalisé

### 📘 Contexte

Tu développes une application qui accueille un utilisateur.

### 🛠️ Consignes

1. Installe le module `prompt-sync`
2. Demande à l’utilisateur de saisir son prénom
3. Stocke la valeur dans une variable
4. Affiche : `Bonjour [prénom]`

💡 Astuce

```bash
npm install prompt-sync
```

### ✅ Critères de réussite

* [ ] Le prénom est bien demandé
* [ ] Le message affiché contient le prénom

### 💻 Exemple

```javascript
const prompt = require('prompt-sync')();

const prenom = prompt("Quel est ton prénom ? ");
console.log(`Bonjour ${prenom}`);
```

***

# 🧪 Exercice 1.3 — Calculer une moyenne

### 🎯 Objectif pédagogique

Manipuler des nombres et effectuer un calcul

### 📘 Contexte

Tu développes un outil interne pour calculer rapidement des moyennes.

### 🛠️ Consignes

1. Demande à l’utilisateur de saisir 2 nombres
2. Convertis les valeurs en nombres avec `Number()`
3. Calcule la moyenne
4. Affiche le résultat

### ✅ Critères de réussite

* [ ] Les deux nombres sont bien saisis
* [ ] Le calcul est correct
* [ ] Le résultat est affiché

### 💻 Exemple

```javascript
const prompt = require('prompt-sync')();

const a = Number(prompt("Premier nombre : "));
const b = Number(prompt("Second nombre : "));

const moyenne = (a + b) / 2;

console.log(`La moyenne est : ${moyenne}`);
```

***

# 🧪 Exercice 1.4 — Calculs sur une sphère

### 🎯 Objectif pédagogique

Utiliser des formules mathématiques

### 📘 Contexte

Tu développes un module de calcul pour une application scientifique.

### 🛠️ Consignes

1. Demande un rayon `R`
2. Convertis la valeur en nombre
3. Calcule :
   * Aire = `4 × π × R²`
   * Volume = `(4 × π × R³) / 3`
4. Affiche les résultats

💡 Astuce

* Utilise `Math.PI`

### ✅ Critères de réussite

* [ ] Le rayon est bien utilisé
* [ ] Les deux formules sont correctes
* [ ] Les résultats sont affichés

### 💻 Exemple

```javascript
const prompt = require('prompt-sync')();

const r = Number(prompt("Rayon : "));

const aire = 4 * Math.PI * r ** 2;
const volume = (4 * Math.PI * r ** 3) / 3;

console.log(`Aire : ${aire}`);
console.log(`Volume : ${volume}`);
```

***

# 🧪 Exercice 1.5 — Secteur circulaire

### 🎯 Objectif pédagogique

Combiner plusieurs entrées utilisateur

### 📘 Contexte

Tu travailles sur une application de dessin vectoriel.

### 🛠️ Consignes

1. Demande :
   * un rayon `R`
   * un angle `A` (en degrés)

2. Convertis les valeurs

3. Calcule l’aire :

   `Aire = (π × R² × A) / 360`

4. Affiche le résultat

### ✅ Critères de réussite

* [ ] Les deux valeurs sont saisies
* [ ] La formule est correcte
* [ ] Le résultat est affiché

### 💻 Exemple

```javascript
const prompt = require('prompt-sync')();

const r = Number(prompt("Rayon : "));
const a = Number(prompt("Angle : "));

const aire = (Math.PI * r ** 2 * a) / 360;

console.log(`Aire : ${aire}`);
```

***

# 🧪 Exercice 1.6 — Inversion de valeurs

### 🎯 Objectif pédagogique

Comprendre la manipulation de variables

### 📘 Contexte

Tu développes une logique de permutation de données.

### 🛠️ Consignes

1. Demande deux nombres `A` et `B`
2. Convertis les valeurs
3. Affiche leurs valeurs
4. Échange les valeurs
5. Affiche les nouvelles valeurs

💡 Astuce

* Utilise une variable temporaire

### ✅ Critères de réussite

* [ ] Les valeurs initiales sont correctes
* [ ] L’échange fonctionne
* [ ] Les valeurs finales sont inversées

### 💻 Exemple

```javascript
const prompt = require('prompt-sync')();

let a = Number(prompt("A : "));
let b = Number(prompt("B : "));

let temp = a;
a = b;
b = temp;

console.log(`A = ${a}, B = ${b}`);
```

***

# ✅ Résumé

**Compétences acquises :**

* ✅ Lire une entrée utilisateur
* ✅ Manipuler des variables
* ✅ Effectuer des calculs simples
* ✅ Structurer un programme Node.js

**À retenir :**

* Toujours **convertir les entrées utilisateur**
* Installer les dépendances avec `npm`
* Tester **étape par étape**
* Vérifier les résultats affichés

***
