---
title: "Fraction"
order: 3
serie: "codage"
---

# Modéliser et coder

Cette partie vous permettra de mettre en pratique les notions suivantes : 
- Notions de surcharge de constructeurs, gestion des exceptions

# Contexte

Une **fraction** (ou nombre rationnel) est un ensemble ordonné de deux entiers: **numérateur** et **dénominateur**. Nous nous proposons ici de définir une classe **Fraction** munie de ses principales opérations.

## Travail à réaliser

### Faire un diagramme de classe détaillé ( niveau de visibilité des membres, signature des méthodes)

Les constructeurs suivants doivent être présents : 

```csharp
// Numérateur = 12, Dénominateur = 7
Fraction f1 = new Fraction(12, 7);

// Fraction nulle de dénominateur 1
Fraction f2 = new Fraction();

// Numérateur = 9, dénominateur = 1
Fraction f3 = new Fraction(9);
```

> Valider votre diagramme avec votre formateur.

### Ajouter dans le diagramme de classe une méthode qui retournera une représentation textuelle d’un fraction 

```csharp
// Numérateur = 12, Dénominateur = 7
Fraction f1 = new Fraction(12, 7);
Console.WriteLine(f1); // affiche "12/7"

// Fraction nulle de dénominateur 1
Fraction f2 = new Fraction();
Console.WriteLine(f2); // affiche "0"

// Numérateur = 9, dénominateur = 1
Fraction f3 = new Fraction(9);
Console.WriteLine(f3); // affiche "9"
```

> Valider votre travail avec votre formateur.


### Ecrire une méthode publique Oppose() qui permettra d'écrire:

```csharp
Fraction f = new Fraction(4, 7); // Création d'une fraction "4/7"
f.Oppose(); // Inverse le signe de la fraction qui devient "-4/7"
```


### Ecrire une méthode publique Inverse() qui permettra d'écrire:

```csharp
Fraction f = new Fraction(4, 7); // Création d'une fraction "4/7"
f.Inverse(); // Inverse numérateur et dénominateur. La fraction devient devient "7/4"
```


### Ecrire une méthode publique SuperieurA de Fraction qui permet de savoir si une :Fraction est supérieure à une autre :Fraction

```csharp
Fraction f1 = new Fraction(11, 7);
Fraction f2 = new Fraction(5, 4);
bool estSuperieur = f1.Superieur(f2); // retourne "vrai"
```


### Ecrire une méthode publique EgalA de Fraction qui permet de savoir si une :Fraction est égale à une autre :Fraction

```csharp
Fraction f1 = new Fraction(11, 7);
Fraction f2 = new Fraction(22, 14);
bool estEgal = f1.EgalA(f2); // retourne "vrai"
```

> Valider votre travail avec votre formateur.

### Réduire la fraction

La méthode privée `Reduire()` réduit la fraction courante en divisant numérateur et dénominateur par leur **pgcd** (Plus Grand Commun Diviseur) et traite le problème du signe de la fraction, le signe de la fraction est le signe de son numérateur, si le numérateur et le dénominateur sont négatifs, la fraction n'a pas de signe (implicitement +).​

Exemple : 

```csharp
Fraction f = new Fraction(120, -150);
Console.WriteLine(f.ToDisplay()) // Affiche -4/5
```

On vous fournit (car nous sommes gentils) une méthode privée ``GetPgcd()`` qui retourne le **PGCD** des numérateurs et dénominateurs :

```csharp
private int GetPgcd() ​
{ ​
    int a = this.numerateur;​
    int b = this.denominateur;​
    int pgcd = 1;​

    if (a != 0 && b != 0)​
    {​
        if (a < 0) 
            a = -a;​
        if (b < 0) 
            b = -b;​
    
        while (a != b)​
        {​
            if (a < b)​
            {​
                b = b-a;​
            }​
            else​
            {​
                a = a-b;​
            }​
        }​

        pgcd = a; ​
    }

    return pgcd;
}​
```

## Compléter la classe Fraction

1. Ecrire une méthode publique `Plus` qui permet d’additionner une :Fraction avec une autre :Fraction.​

​2. Ecrire une méthode publique `Moins` qui  permet de soustraire une :Fraction avec une autre :Fraction.​

3. Ecrire une méthode publique `Multiplie` qui permet  de multiplier une :Fraction avec une autre :Fraction.​

4. Ecrire une méthode publique `Divise` qui  permet de diviser une :Fraction avec une autre :Fraction.  *Attention, il serait préférable de réutiliser les méthodes déjà implémentées pour ce cas.*​

**Vérifier dans votre code que vous n’ayez pas de redondance de code !**

> Valider votre travail avec votre formateur.


### Aller plus loin !

1. Chercher dans la classe **Fraction** les méthodes susceptibles de lever une Exception.​

2. Ces exceptions devront être déclarées, et générées si l’utilisateur des méthodes les maltraite ! ​

> Indice: Il faut savoir que toute nouvelle classe d’exception hérite de la classe Exception.


### Aller plus loin encore ! (C# uniquement)

Si vous avez le temps pour aller plus loin et si vous faites du **C#**. La surcharge d’opérateur en Java n’existe pas !​

**Surcharge d’opérateur:** : Permettre au codeur d’écrire `f1 + f2` au lieu de `f1.Plus(f2)`

```csharp
Fraction f1 = new Fraction(11, 7);
Fraction f2 = new Fraction(22, 14);

Fraction fplus = f1 + f2;
```

> Valider votre travail avec votre formateur.
