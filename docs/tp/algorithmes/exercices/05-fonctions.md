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
- Tester votre fonction en l'invoquant depuis le main() de votre programme


## Exercice 5.1 : Hello World

Écrire une **procédure** *helloWorld()* qui affiche le texte "Hello World !".

Cette procédure sera appelée depuis le programme principal (main()) comme dans l'exemple ci-dessous : 

```java
class App {
    public static void main(String args) {
        App.helloWorld();
    }

    public static void helloWorld() {
        // votre code ici
    }
}

```


## Exercice 5.2 : Créer un tableau de chaines de caractères

Écrire un programme qui calcule la somme des 100 premiers nombres entiers (de 1 à 100 inclus).

Le calcul doit être effectué dans une **fonction** *calculSomme()* qui retourne le résultat du calcul.

```java
class App {
    public static void main(String args) {

        int resultatCalcul;

        System.out.println("Calcul de la somme des 100 premiers nombres entiers.");

        resultatCalcul = App.calculSomme();

        // Afficher le résultat du calcul ici
    }

    public static int calculSomme() {
        // implémenter ici le calcul et retourner le résultat sous forme de nombre entier
    }
}

```

## Exercice 5.3 : Mon identifiant

Ecrire un programme qui demande à l'utilisateur de saisir son nom et son prénom.

Le programme doit ensuite générer et afficher l'identifiant et l'email de l'utilisateur.

- **Identifiant** : 1ère lettre du prénom suivi du nom, le tout en minuscule
    - *Si le nom est composé, seul le 1er nom est utilisé pour générer l'identifiant*
- **Email** : Identifiant suivi de *@monentreprise.fr*

Les 2 éléments doivent être générés dans 2 fonctions distinctes : 
- obtenirIdentifiant(String nom, String prénom) : String;
- obtenirEmail(String identifiant) : String;


## Exercice 5.4 : La plus grande valeur

Écrire un programme qui recherche et affiche la plus grande valeur d'un tableau de nombres entiers. 

L’utilisateur doit donc commencer par entrer le nombre de valeurs qu’il compte saisir. Il effectuera ensuite cette saisie. Enfin, une fois la saisie terminée, le programme calculera et affichera toutes les valeurs dans l'ordre dans lequel elles ont été saisies. Le programme affiche ensuite la valeur la plus grande.

La recherche de l'élément le plus grand doit être implémenté dans une **procédure** ou une **fonction** (vous devrez motiver votre choix).

Vous prendrez soin de récolter les valeurs saisies dans un 1er temps et ensuite d'effectuer la recherche et l'affichage.


## Exercice 5.5 : Recherche spécifique dans un tableau

Toujours et encore sur le même principe, écrivez un algorithme permettant, à l’utilisateur de saisir les 
notes d'une classe. Le programme, une fois la saisie terminée, renvoie le nombre de ces notes inférieures 
à la moyenne de la classe.

Le **calcul de la moyenne** et la **recherche des notes inférieures à la moyenne** doivent être implémentées dans des fonctions distinctes.


> Validez votre travail avec votre formateur avant de passer à la suite.
