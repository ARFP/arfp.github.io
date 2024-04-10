---
title: "Compte bancaire"
order: 1
serie: "codage"
---

# Modéliser et coder

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Notions d’attributs, de constructeurs, de réutilisation de méthodes

# Contexte 

**Un compte bancaire (simplifié) est caractérisé par :​**

- Un numéro unique​
- Le nom de son propriétaire​
- Son solde (montant restant sur le compte): il peut être négatif​
- Le montant du découvert autorisé (chiffre négatif) : le solde ne peut descendre en dessous.​

**Nous donnons à cette classe les comportements​ suivants :** 

- Donner une représentation textuelle de toutes ses informations​.

- Créditer d'un montant fourni .

- Débiter le solde d'un montant fourni, mais attention un "drapeau" (booléen) indiquera si l'opération a pu se réaliser​.

- Transférer un montant, du compte courant vers un autre compte.

- Comparer le solde de l'objet courant avec le solde d'un autre compte fourni, le résultat sera un booléen (**vrai** si le solde courant est supérieur au solde de l'autre compte, **faux** dans le cas contraire).


## Travail à réaliser

Dessiner le diagramme de classe Compte

> Valider votre diagramme avec vos formateurs avant de passer à la suite 

### Implémentez les **constructeurs** et la méthode `toString()` afin de pouvoir réaliser l'exemple suivant

```csharp
// C#
static void Main() 
{
    Compte c = new Compte();
    Compte c1 = new Compte(12345, "toto", 1000, -500);
    Console.WriteLine(c.ToString()):
    Console.WriteLine(c1.ToString()):
}
```

```java
// Java
public static void main() 
{
    Compte c = new Compte();
    Compte c1 = new Compte(12345, "toto", 1000, -500); 
    System.out.println(c):
    System.out.println(c1):
}
```

### Implémentez les méthodes `Debiter` et `Crediter` afin de réaliser l'exemple suivant

```csharp
// C#
Compte c = new Compte(545454, "Laurent", 2000, -500);
c.Crediter(100);
Console.WriteLine(c); 
bool ok = c.Debiter(10000);
Console.WriteLine(c); 
if(ok) {
    Console.WriteLine("Débit réussi"); 
}
else {
    Console.WriteLine("Échez du Débit"); 
}
```

```java
// Java
Compte c = new Compte(545454, "Laurent", 2000, -500);
c.Crediter(100);
System.out.println(c); 
bool ok = c.Debiter(10000);
System.out.println(c); 
if(ok) {
    System.out.println("Débit réussi"); 
}
else {
    System.out.println("Échez du Débit"); 
}
```
### Implémenter les méthodes nécessaires afin de réaliser l'exemple suivant

```csharp
// C#
Compte c1 = new Compte(12345, "Toto", 1000, -500);
Compte c2 = new Compte(45657, "Titi", 2000, -1000);
c1.Transferer(1300, c2);
Console.WriteLine(c1); 
Console.WriteLine(c2); 
```

```java
// Java
Compte c1 = new Compte(12345, "Toto", 1000, -500);
Compte c2 = new Compte(45657, "Titi", 2000, -1000);
c1.Transferer(1300, c2);
System.out.println(c1); 
System.out.println(c2); 
```

### Implémenter les méthodes nécessaires afin de réaliser l'exemple suivant

```csharp
// C#
Compte c1 = new Compte(12345, "Toto", 1000, -500);
Compte c2 = new Compte(45657, "Titi", 2000, -1000);

if(c1.Superieur(c2)) {
    Console.WriteLine("Supérieur"); 
} 
else {
    Console.WriteLine("Inférieur");
}
```

```java
// Java
Compte c1 = new Compte(12345, "Toto", 1000, -500);
Compte c2 = new Compte(45657, "Titi", 2000, -1000);

if(c1.Superieur(c2)) {
    System.out.println("Supérieur"); 
} 
else {
    System.out.println("Inférieur");
}
```

Le résultat devrait afficher "inférieur".


> Valider votre travail avec vos formateurs.
