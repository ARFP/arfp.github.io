---
title: "Gestion d'un Projet Java en binôme"
order: 13
---

# Gestion d'un dépôt à plusieurs (ABC)

Cet exercice doit être réalisé en équipe de 2.

## Préparation du projet

1. Le 1er membre de l'équipe crée un dépôt nommé `tp-git-console-java`

2. Le 2nd membre de l'équipe "Fork" le dépôt du 1er membre.

3. Les 2 membres de l'équipe clonent le dépôt en local sur leur machine.

4. Les 2 membres de l'équipe prennent connaissance des tâches à effectuer (dans la partie "Travail à réaliser" de ce document) et créent les tickets nécessaires.

## Démarche à adopter 

Pour chaque tâche à réaliser : 

- Créer un ticket sur github (dans l'onglet "issues" de votre fork)
- Créer une branche et 1 commit lorsque la tâche est terminée. 
- Votre code doit obligatoirement être documenté.

En d'autres termes :
- 1 tâche = 1 ticket = 1 branche = 1 commit

> Note: Créez tous les tickets AVANT de commencer à coder !

# Travail à réaliser

> Rappel : faites obligatoirement un COMMIT et un PUSH après chaque tâche enumérée dans ce fichier.

> Note: Le fichier principal de votre programme correspond au fichier `.java` qui contient la méthode `main(String[] args)`.

1. Dans le dépôt, créer un répertoire `Cars`. Ouvrir ce répertoire et y créer un projet Console Java (avec Visual Studio Code ou Eclipse).

2. Créer un modèle `Car` représentant une voiture. Une voiture est caractérisée par une marque, un nom de modèle et un prix.

3. Dans le fichier princiapl de votre programme, demander à l'utilisateur de saisir une nouvelle voiture (marque, modèle, prix). Lorsque l'utilisateur a validé ses saisies, les informations sont directement affichés dans la console.

4. Dans le fichier principal de votre programme, créez une instance de `Car` dans une variable nommée `myCar` et y renseigner les informations saisies par l'utilisateur. Afficher ensuite la marque, le modèle et le prix dans la console. (à ce niveau, ces informations s'affichent 2 fois dans le programme).

5. Créer une classe "CarContainer" dont le rôle est de gérer une liste de voitures. Cette classe permet de trier les voiture soir par marque (CarContainer.SortByBrand()), soit par prix (CarContainer.SortByPrice()). Dans les 2 cas, le tri se fait par ordre croissant. Le squelette de la classe est décrit ci-dessous : 

```java
class CarContainer
{
    ArrayList<Car> cars;

    public CarContainer() {
        this.cars = new ArrayList<Car>();
    }

    public ArrayList<Car> SortByBrand() {
        // votre code
    }

    public  ArrayList<Car> SortByPrice() {
        // votre code
    }
}
```

6. Créez une instance de CarContainer dans le programme principal et modifiez le code du programme afin que l'instance de Car créée à l'étape 4 soit ajoutée dans PersonContainer.

7. Modifier le programme principal afin que 3 voitures soient automatiquement créées au démarrage du programme.

8. Modifier le programme principal afin que l'utilisateur puisse ajouter autant de voitures qu'il le souhaite dans CarContainer. Pour chaque voiture, l'utilisateur saisit la marque, le modèle et le prix.

9. Les doublons ne sont pas permis, à l'ajout d'une voiture dans CarContainer, on doit vérifier que le couple "marque + modèle" n'existe pas déjà dans la liste.

10. Dans le fichier README.md de votre dépôt, rédiger une petite documentation qui indique comment se servir du programme.

11. Lorsque le programme est terminé et fonctionnel, Ajouter une `release` qui sera étiquetée `v.1.0.0`.
