---
title: "PHP: Formulaires"
serie: "php"
order: 12
---

Le HTML permet de créer des [formulaires](https://developer.mozilla.org/fr/docs/Learn_web_development/Extensions/Forms/Your_first_form). Cependant, pour récupérer et manipuler les données envoyées, un langage "serveur" (PHP, Java, C#...) est nécessaire. 

Voici un exemple simple de formulaire traité avec PHP pour vous aider à démarrer. 

Le formulaire ci-dessous permet à un utilisateur de saisir son nom et son âge, puis affiche ces informations après la soumission.

### Formulaire HTML

```html
<!-- index.html -->
<form action="traitement.php" method="post">

    <label for="monNom">Nom :</label> 
    <input type="text" id="monNom" name="nom" required> 

    <label for="monAge">Nom :</label> 
    <input type="number" id="monAge" name="age" required>    

    <button type="submit">Envoyer</button>
</form>
```

Dans le code précédent : 

- La balise `<form>` contient 2 attributs : 
    - **action="traitement.php"** : indique vers quel script les données du formulaire seront soumises. 
    - **method="POST"** : indique la [méthode HTTP](https://developer.mozilla.org/fr/docs/Web/HTTP/Methods) utilisée pour transmettre les données au script indiqué par l'attribut *action*.
- Le formulaire utilise donc la méthode `POST` pour envoyer les données à `traitement.php`.
- Le champ `nom` est de type text.
- Le champ `age` est de type number.

### Script PHP (traitement.php)

```php
<?php
// traitement.php
// Si la méthode HTTP de la requête est "POST"
// if (!empty($_POST)) { // variante
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

> Plus d'infos sur le traitement des formulaires avec PHP : [PHP: Utiliser les formulaires](https://www.php.net/manual/fr/tutorial.forms.php)

--- 

Lorsque le formulaire est soumis, les données sont transmises au script PHP indiqué dans l'attribut `action` de la balise `<form>`.
La [méthode HTTP](https://developer.mozilla.org/fr/docs/Web/HTTP/Methods) utilisée (attribut `method` de la balise `<form>`) permet de déterminer où les données seront disponibles après soumission du formulaire.

Selon la méthode utilisée par le formulaire, les données sont disponibles: 
- Dans le tableau `$_GET` si le formulaire est soumis avec la méthode `GET`.
- Dans le tableau `$_POST` si le formulaire est soumis avec la méthode `POST`.

> **$_GET** et **$_POST** sont des variables **Superglobales**, ce qui signifie qu'elles sont disponibles quel que soit le contexte du script.

Le formulaire contient 2 champs : `nom` et `age` (visible dans l'attribut `name` de chaque champ). 

Lorsque le formulaire est soumis, PHP va utiliser la valeur de l'attribut `name` de chaque champ pour créer un tableau associatif dont les clés seront les `name` des différents champs et la valeur associée sera celle saisie dans le champ correspondant.

- Pour le champ "nom" (`<input name="nom">`), la valeur saisie sera disponible dans `$_POST['nom']`.
- Pour le champ "age" (`<input name="age">`), la valeur saisie sera disponible dans `$_POST['age']`.

### Never Trust User Input

*Il convient de contrôler les données soumises dans un formulaire car ... **[NEVER TRUST USER INPUT !](https://www.garybell.co.uk/never-trust-user-input/)**.*

Les contrôles effectués côté serveur avec PHP **seront plus efficaces et sécurisés** que tous les contrôles côté client avec Javascript (Javascript peut être désactivé dans le navigateur client). 

- Mettre en place les contrôles coté *frontend* (avec l'attribut HTML *[pattern](https://developer.mozilla.org/fr/docs/Web/HTML/Attributes/pattern)* et/ou avec Javascript) offrira à l'utilisateur un confort d'utilisation amélioré (pas besoin de recharger la page pour voir les erreurs de saisie).

- Mettre en place les contrôles coté *backend* sécurisera votre système (serveur, base de données) et vos utilisateurs.

#### Contrôlez systématiquement les données entrantes

- Pour les champs de type texte, le contrôle sera généralement effectué avec une **expression régulière (Regex)** et la fonction **[preg_match()](https://www.php.net/manual/fr/function.preg-match.php)**.
- Pour les données numériques, les fonctions **[filter_var()](https://www.php.net/manual/fr/function.filter-var.php)**, **[intval()](https://www.php.net/manual/fr/function.intval.php)** et/ou **[floatval()](https://www.php.net/manual/fr/function.floatval.php)** peuvent être utiles.
- Pour les dates, contrôler la validité et le format de la date avec la classe **[DateTime](https://www.php.net/manual/fr/class.datetime.php)**.

Consultez la page de la fonction **[filter_var()](https://www.php.net/manual/fr/function.filter-var.php)** pour découvrir tous les contrôles disponibles dans le langage PHP.

Si vous devez contrôler des formats de données particuliers, vous devrez probablement utiliser des expressions régulières.


**Reprenons notre script traitement.php et ajoutons-y des contrôles de saisie :** 

```php
<?php
// traitement.php avec contrôles de saisie
// Si la méthode HTTP de la requête est "POST"
// if (!empty($_POST)) { // variante
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    try {
        // Vérification que toutes les données ont bien été soumises
        // Si l'une des donnée est manquante, on lève une exception qui sera attrapée dans le bloc "catch"
        if(!isset($_POST['nom'], $_POST['age'])) {
            throw new Exception('Le formulaire est incomplet');
        }

        // Récupérer les données du formulaire
        $nom = $_POST['nom'];
        $age = $_POST['age'];

        // Contrôle du nom : Uniquement des lettres et entre 2 et 50 caractères
        // Si le nom ne respecte pas le format attendu : erreur
        if(!preg_math('/^[a-zA-Z]{2,50}$/', $nom)) {
            throw new Exception('Le format du nom est incorrect');
        }

        // contrôle de l'age : Doit être un entier entre 1 et 120
        // Si l'âge ne respecte pas les conditions : erreur
        if(!filter_var(
            $age, 
            FILTER_VALIDATE_INT, 
            ["options" => ['min_range' => 1, 'max_range' => 120]]
        )) {
            throw new Exception('L\âge renseigné est invalide');
        }

        // Une fois les contrôles effectués, et à partir de ce point, on considère les données valides. Nous pouvons donc les exploiter.

        // Afficher les données
        echo "<h2>Informations soumises :</h2>";
        echo "Nom : " . $nom . "<br>";
        echo "Âge : " . $age . "<br>";
    } catch(Exception $ex) {
        // Si une erreur est levée dans le bloc "try" ci-dessus, l'erreur correspondante est affichée et le script s'arrête
        echo $ex->getMessage();
        exit;
    }    
}
```

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

- [Les formulaires HTML (MDN)](https://developer.mozilla.org/fr/docs/Learn_web_development/Extensions/Forms/Your_first_form)
- [Validation des formulaires coté frontend (MDN)](https://developer.mozilla.org/fr/docs/Learn_web_development/Extensions/Forms/Form_validation)
- [Traiter des formulaires avec PHP (Apprendre PHP)](https://www.apprendre-php.com/tutoriels/tutoriel-12-traitement-des-formulaires-avec-get-et-post.html)
- [Valider des formulaires avec PHP (Pierre GIRAUD)](https://www.pierre-giraud.com/php-mysql-apprendre-coder-cours/securiser-valider-formulaire/)


> Valider votre travail avec un formateur.

Lorsque vous avez terminé, vous pouvez [accéder à la suite](./formulaires-intro-correction)