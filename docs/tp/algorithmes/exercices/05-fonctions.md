---
title: "Procédures et fonctions"
level: 4
order: 5
---

# Partie 5

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Les notions des parties précédentes
- Les procédures
- Les fonctions

Pour chaque exercice : 
- Créer et implémenter la procédure ou la fonction demandée
- Tester votre fonction en l'invoquant depuis le `main()` de votre programme

> Rappel
>
> Une procédure effectue un traitement et ne retourne pas de valeur
> - Le type de retour d'une procédure est toujours "void"
>
> Une fonction effecture un traitement et retourne TOUJOURS une valeur
> - Le type de retour d'une fonction est toujours différent de "void"
> - Exemples de types de retour : String, int, float, double, DateTime...

--- 

> Reproduisez les 3 exemples suivant avant de commencer

## Exemple 1 : Procédure Hello World

- Créer un projet `HelloWorld`.
- Écrire une **procédure** `helloWorld()` qui affiche le texte "Hello World !".

Cette procédure sera appelée depuis le programme principal (main()) comme dans l'exemple ci-dessous : 

```java
public class App {
    public static void main(String[] args) {
        App.helloWorld();
    }

    public static void helloWorld() {
        System.out.println("Hello World !");
    }
}
```

## Exemple 2 : Fonction Hello You

- Créer un projet `HelloYou`.
- Écrire une **fonction** `helloYou()` qui retourne le texte "Hello You !".

Cette fonction sera appelée depuis le programme principal (main()) qui affichera le résultat comme dans l'exemple ci-dessous : 

```java
public class App {
    public static void main(String[] args) {
        String result = App.helloYou();
        System.out.println(result);
    }

    public static String helloYou() {
        return "Hello You !";
    }
}
```

## Exemple 3 : Fonction Hello {$name}

- Créer un projet `HelloName`.
- Le programme demande à l'utilisateur de saisir son prénom.
- Le programme affiche ensuite "Bienvenue " suivi du prénom saisi.
- 1 fonction `askFirstName` servira à demander le prénom à l'utilisateur.
- 1 procédure `showFirstName` accceptant 1 argument de type `String` affichera le résultat.

```java

import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        String result;
        result = App.askFirstName(); // Demande du prénom
        App.showResult(result); // Affichage du résultat
    }

    public static String askFirstName() {
        String firstname;
        Scanner sc = new Scanner(System.in); // Initialise le Scanner
        System.out.println("Bonjour, saisissez votre prénom: "); 
        firstname = sc.nextLine(); // Attente de la saisie utilisateur
        sc.close();
        return firstname; // On retourne le résultat
    }

    public static void showResult(String name) {
        System.out.println("Bonjour " + name);
    }
}
```

## Exercice 5.1 : Les opérations mathématiques

- Créer un projet "IntroFonctionsMaths".
- Implémenter les 4 fonctions demandées ci-dessous.
- Appeler ces 4 fonctions depuis le `main`.
- Afficher les différents résultats à l'aide d'une procédure.

```
Créer une fonction « getSum » qui accepte deux arguments de type int. Elle devra retourner la somme des deux valeurs.

Exemple :
getSum(5, 3); // retourne 8
```

```
Créer une fonction « getSub » qui accepte deux arguments de type int. Elle devra retourner la soustraction des deux valeurs. 

Exemples :
getSub(5, 3); // retourne 2 
getSub(3, 5); // retourne -2
```

```
Créer une fonction getMulti qui accepte deux arguments de type float. Elle devra retourner la multiplication des deux valeurs. Limitez le résultat à 2 décimales.

Exemples :
getMulti(5.6, 3); // retourne 16.8
getMulti(5.6, -3.7); // retourne -20.72
```

```
Créer une fonction getDiv qui accepte deux arguments de type int. Elle devra retourner la division des deux valeurs. 
Limitez le résultat à 2 décimales. 
Rappel : une division par zéro est impossible. Dans ce cas, retourner la valeur « 0 ».

Exemples :
getDiv(20, 3); // retourne 6.67
getDiv(20, 0); // retourne 0
```

## Exercice 5.2 : Les chaines de caractère

- Créer un projet "IntroFonctionsChaines".
- Implémenter les 4 fonctions demandées ci-dessous.
- Appeler ces 4 fonctions depuis le `main`.
- Afficher les différents résultats à l'aide d'une procédure.

```
Créer une fonction « getMC2 ». 
Cette fonction doit retourner Le nom de l’inventeur de la formule « E = MC² ».
```

```
Créer une fonction « getUserName » qui accepte deux arguments (prénom et nom) de type string. 
Cette fonction doit retourner la concaténation des deux valeurs. 

Exemple : 
getUserName ('mickaël', 'devoldère'); // retourne « mickaëldevoldère » 
```

```
Créer une fonction « getFullName » acceptant deux arguments (nom et prénom) de type string. 
Cette fonction doit retourner la concaténation des deux valeurs avec un espace entre les 2.
Assurez vous que : 
- Le prénom doit petre en minuscule (sauf la 1ère lettre qu idoit être en MAJUSCULE).
- Le nom doit être en MAJUSCULE.

Exemple : 
getFullName ('devoldère', 'mickaël'); // retourne « Mickaël DEVOLDÈRE »
```


```
Créer une fonction « askUser » acceptant deux arguments (nom et prénom) de type string. 
Cette fonction doit retourner une chaîne de caractères sous la forme :
« Bonjour Prénom NOM. Connaissez-vous Einstein ? »
Cette fonction doit obligatoirement appeler et utiliser les résulats des fonctions
- « getFullName() » pour obtenir la concaténation du prénom et du nom.
- « getMC2() » pour obtenir le nom de l'inventeur de la formule E = MC².

Exemple : 
askUser ('devoldère', 'mickaël'); // retourne « Bonjour Mickaël DEVOLDÈRE, connaissez-vous Einstein ? »
```

> Validez votre travail avec votre formateur avant de passer à la suite.
