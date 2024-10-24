---
title: "Gestion d'un projet C# en binôme"
order: 14
---

# Gestion d'un dépôt à plusieurs (DWWM/CDA)

Cet exercice doit être réalisé en équipe de 2.

## Préparation du projet

1. Le 1er membre de l'équipe crée un dépôt nommé `tp-git-console-csharp` et y ajoute une branche `develop`.

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

1. Dans le dépôt, créer un répertoire `People`. Ouvrir le temrinal dans ce répertoire et y créer une application C# Console en tapant la commande `dotnet new console .`

2. Créer une  classe `Person` représentant une personne. Une personne est caractérisée par un nom et un prénom.

3. Dans le fichier Program.cs, demander à l'utilisateur de saisir un nom et un prénom qui seront directement affichés dans la console.

4. Dans le fichier Program.cs, créez une instance de `Person` dans une variable nommée `myPerson` et y renseigner le nom et prénom saisi par l'utilisateur. Afficher ensuite le prénom suivi du nom de la personne dans la console. (à ce niveau, le nom et prénom s'affichent 2 fois dans le programme).

5. Créer une classe `PeopleContainer` dont le rôle est de gérer une liste de Personnes. Cette classe permet de trier les personnes soit par nom (PeopleContainer.SortByLastName()), soit par prénom (PersonContainer.SortByFirstName()). Dans les 2 cas, le tri se fait par ordre croissant. La classe doit implémenter l'interface décrite ci-dessous : 

```csharp
interface IPersonContainer
{
    List<Person> SortByLastName();
    List<Person> SortByFirstName();
}
```

6. Créez une instance de PersonContainer dans le programme principal et modifiez le code du programme afin que l'instance de Person créée à l'étape 4 soit ajoutée dans PersonContainer.

7. Modifier le programme principal afin que l'utilisateur puisse ajouter autant de personne qu'il le souhaite dans PersonContainer. Pour chaque personne, l'utilisateur saisit le nom et le prénom.

8. Les doublons ne sont pas permis, à l'ajout d'une personne dans PersonContainer, on doit vérifier que le couple "nom + prénom" n'existe pas déjà dans la liste.

9. Modifier le programme principal afin que 3 personnes soient créées au démarrage du programme.

10. Modifier le programme principal afin de proposer à l'utilisateur de sauvegarder la liste au format JSON lorsqu'il a terminé d'ajouter des personnes.

11. Dans le fichier README.md de votre dépôt, rédiger une petite documentation qui indique comment se servir du programme.

12. Lorsque le programme est terminé et fonctionnel, Ajouter une `release` qui sera étiquetée `v.1.0.0`.
