---
title: "Révisions #1"
level: 5
order: 10
---

Cette série d'exercices vous permettra de réviser les parties précédentes.


## Exercice 5.1 : Calcul des nombres parfaits

On souhaite écrire un programme de calcul des 4 premiers nombres parfaits. 

Un nombre est dit parfait s’il est égal à la somme de ses diviseurs, 1 compris.   

Exemple : 
```
6 = 1+2+3 
6 est un nombre parfait.  
``` 
   
L'algorithme retenu contiendra deux boucles imbriquées. Une boucle de comptage des nombres parfaits qui s'arrêtera lorsque le décompte sera atteint, la boucle interne ayant vocation à calculer tous les diviseurs du nombre examiné d'en faire la somme puis de tester l'égalité entre cette somme et le nombre.  

Ecrivez le programme complet qui affiche les 4 premiers nombres parfaits.

```
Affichage des 4 premiers nombres parfaits :
6 est un nombre parfait.
28 est un nombre parfait.
496 est un nombre parfait.
8128 est un nombre parfait.

```

## Exercice 5.2 : Conversion Kilomètres <-> Miles 

### Exercice 5.2.1 

L'utilisateur saisit une valeur en kilomètres comprise entre `0.01` et `1 000 000`. 

Si la valeur est hors limite, l'utilisateur est invité à saisir une nouvelle valeur. Si la valeur est égale à `q`, le programme se termine et se ferme. 

Formule km vers mi :  	`1 miles = 1.609 kilomètres`. 

Le programme affiche le résultat de la conversion sous forme de nombre réel double précision.

### Exercice 5.2.2 : 

L’utilisateur peut choisir le sens de la conversion.

Il saisit une valeur à convertir avec son unité de mesure (km ou mi).

Si aucune unité de mesure n’est indiquée, le programme considère la valeur en kilomètres.


## Exercice 5.3 : Conversion Degrés Fahrenheit (°F) <--> Degrés Celsius (°C)

### Exercice 5.3.1

Soit "X" une valeur à convertir.
- Formule °F vers °C :       `°C = (X − 32) * 5/9`
- Formule °C vers °F :       `°F = (X  9/5) + 32`

L'utilisateur saisit une valeur numérique comprise entre `-459.67` et `5 000 000` suivi de l'unité de température : 
	- `C` pour Celsius
	- `F` pour Fahrenheit

La valeur et l'unité de température sont séparés par un espace (exemple: 32 C pour 32 degrés Celsius). 

Si la valeur est hors limite, l’utilisateur est invité à saisir une nouvelle valeur. 

Le programme affiche le résultat de la conversion sous forme de nombre réel double précision.

Pour information, le zéro absolu correspond à -459.67 Degrés Fahrenheit ou -273.15 degrés Celsius. 

### Exercice 5.3.2 

L’utilisateur saisit une unité de mesure (C ou F). 

Il saisit ensuite une plage de valeurs (minimum, maximum).

Une fois les 2 valeurs saisies, le programme convertit toute la plage de valeur et affiche le résultat de chaque conversion.

La commande `quit` permet de quitter le programme. 

Tant que cette commande n’est pas saisie, l’utilisateur peut continuer à faire des conversions.
