---
title: "PHP: Formulaires"
serie: "php"
order: 12
---

Le HTML permet de créer des formulaires. Cependant, pour récupérer et manipuler les données envoyées, un langage "serveur" (PHP, Java, C#...) est nécessaire. 

Voici un exemple simple de formulaire traité avec PHP pour vous aider à démarrer. 

Le formulaire ci-dessous permet à un utilisateur de saisir son nom et son âge, puis affiche ces informations après la soumission.

### Formulaire HTML

```html
<body>
    <h1>Formulaire PHP</h1>
    <form action="traitement.php" method="post">

        <label for="monNom">Nom :</label> 
        <input type="text" id="monNom" name="nom" required> 

        <label for="monAge">Nom :</label> 
        <input type="number" id="monAge" name="age" required>    

        <button type="submit">Envoyer</button>
    </form>
</body>
```

Dans le code précédent : 

- La balise `<form>` contient 2 attributs : 
    - **action="traitement.php"** : indique vers quel script les données du formulaire seront soumises. 
    - **method="POST"** : indique la méthode HTTP utilisée pour transmettre les données au script indiqué par l'attribut *action*.
- Le formulaire utilise donc la méthode `POST` pour envoyer les données à `traitement.php`.
- Le champ `nom` est de type text.
- Le champ `age` est de type number.

### Script PHP (traitement.php)

```php
<?php
// Si la méthode HTTP de la requête est "POST"
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $nom = $_POST['nom'];
    $age = $_POST['age'];
    // Afficher les données
    echo "<h2>Informations soumises :</h2>";
    echo "Nom : " . $nom . "<br>";
    echo "Âge : " . $age . "<br>";
}
```

- Le script vérifie si la méthode de la requête est `POST`.
- Les données du formulaire sont récupérées.
- Les informations saisies sont ensuite affichées.

--- 

Lorsque le formulaire est soumis, les données sont transmises au script PHP indiqué dans l'attribut `action` de la balise `<form>`.
La méthode HTTP utilisée (attribut `method` de la balise `<form>`) permet de déterminer où les données seront disponibles après soumission du formulaire.

Selon la méthode utilisée par le formulaire, les données sont disponibles: 
- Dans le tableau `$_GET` si le formulaire est soumis avec la méthode `GET`.
- Dans le tableau `$_POST` si le formulaire est soumis avec la méthode `POST`.

> **$_GET** et **$_POST** sont des variables **Superglobales**, ce qui signifie qu'elles sont disponibles quel que soit le contexte du script.

Le formulaire contient 2 champs : `nom` et `age` (visible dans l'attribut `name` de chaque champ). 

Lorsque le formulaire est soumis, PHP va utiliser la valeur de l'attribut `name` de chaque champ pour créer un tableau associatif dont les clés seront les `name` des différents champs et la valeur associée sera celle saisie dans le champs correspondant.

- Pour le champ "nom" (`<input name="nom">`), la valeur saisie sera disponible dans `$_POST['nom']`.
- Pour le champ "age" (`<input name="age">`), la valeur saisie sera disponible dans `$_POST['age']`.

*Il convient de contrôler les données soumises dans un formulaire car ... **NEVER TRUST USER INPUT !***

- Pour les champs de type texte, le contrôle sera généralement effectué avec une Regex.
- Pour les données numériques, les fonctions intval() et/ou floatval() peuvent être utiles.
- Pour les dates, contrôler le format de la date.
- etc...

Les contrôles effectués côté serveur avec PHP **seront plus efficaces et sécurisés** que tous les contrôles côté client avec Javascript (Javascript peut être désactivé dans le navigateur client).

## Exercez vous

### Formulaire de contact

Créer un répertoire pour cet exercice.

Créer un fichier `contact.html` et y implémenter un formulaire de contact demandant à l'utilisateur de saisir : 

- Un nom (input de type "text")
- Une date de naissance (input de type "date")
- Une adresse email (input de type "email")
- Un message (textarea)

Le formulaire doit être soumis avec la méthode `POST` vers le fichier `traitement-contact.php`.

Dans le même répertoire, créer ensuite un fichier `traitement-contact.php` qui implémentera les opérations suivantes :

- Contrôler si le méthode utilisée est bien `POST`.
- Récupérer les informations saisies dans le formulaire dans des variables.
- Afficher les données saisies.

Lorsque vous avez terminé d'implémenter ces 2 fichiers et après avoir vérifié leur bon fonctionnement, trouvez une solution pour contrôler les données saisies :

- Le nom doit contenir au moins 2 caractères et ne peut contenir que des lettres.
- La date doit être dans le passé.
- L'adresse email doit être dans le bon format.
- Le message ne doit pas contenir de balises HTML.

Lorsque vous avez terminé d'implémenter ces contrôles, ajouter la vérification suivante :

- A partir de la date de naissance, calculer l'âge.
    - Si l'âge est inférieur à 18, afficher l'erreur "vous êtes mineur, accès interdit".
    - si l'âge est supérieur ou égal à 18, afficher les données saisies dans le formulaire ainsi que l'âge calculé.

## Pour vous aider : 

- [Traiter des formulaires avec PHP (Apprendre PHP)](https://www.apprendre-php.com/tutoriels/tutoriel-12-traitement-des-formulaires-avec-get-et-post.html)
- [Valider des formulaires avec PHP (Pierre GIRAUD)](https://www.pierre-giraud.com/php-mysql-apprendre-coder-cours/securiser-valider-formulaire/)


> Valider votre travail avec un formateur.
