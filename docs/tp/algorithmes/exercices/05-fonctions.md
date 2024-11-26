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
- Écrire une **procédure** `hello()` qui affiche le texte "Hello World !".

Cette procédure sera appelée depuis le programme principal (main()) comme dans l'exemple ci-dessous : 

```java
public class HelloWorld {
    public static void main(String[] args) {
        HelloWorld.hello(); // Appel de la procédure "hello" de la classe "HelloWorld"
    }

    public static void hello() {
        System.out.println("Hello World !");
    }
}
```

## Exemple 2 : Fonction Hello You

- Créer un projet `HelloYou`.
- Écrire une **fonction** `sayHello()` qui retourne le texte "Hello You !".

Cette fonction sera appelée depuis le programme principal (main()) qui affichera le résultat comme dans l'exemple ci-dessous : 

```java
public class HelloYou {
    public static void main(String[] args) {
        String result = HelloYou.sayHello(); // Appel de la fonction "sayHello" de la classe "HelloYou"
        System.out.println(result);
    }

    public static String sayHello() {
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

public class HelloName {
    public static void main(String[] args) {
        String result;
        result = HelloName.askFirstName(); // Demande du prénom
        HelloName.showResult(result); // Affichage du résultat
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
- Afficher les différents résultats si possible à l'aide d'une procédure.

1. Créer une fonction « getSum » qui accepte deux arguments de type int. 
    - La fonction restourne la somme des deux valeurs.
2. Créer une fonction « getSub » qui accepte deux arguments de type int. 
    - La fonction restourne la soustraction des deux valeurs.
3. Créer une fonction getMulti qui accepte deux arguments de type float. 
    - La fonction restourne la multiplication des deux valeurs. 
    - Limitez le résultat à 2 décimales.
4. Créer une fonction getDiv qui accepte deux arguments de type double. 
    - La fonction restourne la division des deux valeurs.
    - Limitez le résultat à 2 décimales.
    - Rappel : une division par zéro est impossible. Dans ce cas, retourner la valeur « 0 ».
 

**Pour vous aider, voici le squelette du programme attendu**

```java
public class IntroFonctionsMaths {
    public static void main(String[] args) {
        // variables
        int addition;

        // Invoquer les fonctions depuis le main 
        addition = IntroFonctionsMaths.getSum(2, 3);

        // Afficher le résultat des opérations dans le main
        System.out.println("Résultat de l'addition: " + addition);
    }

    public static int getSum(int a, int b) {
        // Code à implémenter
    }

    public static int getSub(int a, int b) {
        // Code à implémenter
    }

    public static float getMulti(float a, float b) {
        // Code à implémenter
    }

    public static double getDiv(double a, double b) {
        // Code à implémenter
    }
}
```


## Exercice 5.2 : Les chaines de caractère

- Créer un projet "IntroFonctionsChaines".
- Implémenter les 4 fonctions demandées ci-dessous.
- Appeler ces 4 fonctions depuis le `main`.
- Afficher les différents résultats à l'aide d'une procédure.


**Créer une fonction « getMC2 ».** 
- Cette fonction doit retourner Le nom de l’inventeur de la formule « E = MC² ».

--- 

**Créer une fonction « getUserName » qui accepte deux arguments (prénom et nom) de type string.** 
- Cette fonction doit retourner la concaténation des deux valeurs. 
- *Exemple :* `IntroFonctionsChaines.getUserName ('mickaël', 'devoldère'); // retourne « mickaëldevoldère »` 

---

**Créer une fonction « getFullName » acceptant deux arguments (nom et prénom) de type string.** 
- Cette fonction doit retourner la concaténation des deux valeurs avec un espace entre les 2.
- Assurez vous que : 
    - Le prénom doit être en minuscule (sauf la 1ère lettre qui doit être en MAJUSCULE).
    - Le nom doit être en MAJUSCULE.
- *Exemple :* `getFullName ('devoldère', 'mickaël'); // retourne « Mickaël DEVOLDÈRE »`

--- 

**Créer une fonction « askUser » acceptant deux arguments (nom et prénom) de type string.** 
- Cette fonction doit retourner une chaîne de caractères sous la forme :
    - « Bonjour Prénom NOM. Connaissez-vous Einstein ? »
- Cette fonction doit obligatoirement appeler et utiliser les résulats des fonctions précédentes :
    - « getFullName() » pour obtenir la concaténation du prénom et du nom.
    - « getMC2() » pour obtenir le nom de l'inventeur de la formule E = MC².
- Exemple : `askUser ('devoldère', 'mickaël'); // retourne « Bonjour Mickaël DEVOLDÈRE, connaissez-vous Einstein ? »`


> Validez votre travail avec votre formateur avant de passer à la suite.
