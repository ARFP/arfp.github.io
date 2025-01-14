---
title: "PHP: Formulaires 2"
serie: "php"
order: 13
---

## Prerequis

- Avoir terminé la partie précédente [Introduction aux formulaires avec PHP](./formulaires-intro).

## Le modèle

Dans la partie précédente, vous avez implémenté un formulaire avec un traitement backend dans un script PHP.

Le formulaire devrait ressembler à ceci : 

### Formulaire HTML

```html
<form action="traitement-contact.php" method="post">

    <div>
        <label for="monNom">Votre Nom :</label> 
        <input type="text" id="monNom" name="nom" required> 
    </div>
    <div>
        <label for="maDate">Votre Date de naissance :</label> 
        <input type="date" id="maDate" name="dateDeNaissance" required>  
    </div>
    <div>
        <label for="monEmail">Votre Adresse email :</label> 
        <input type="date" id="monEmail" name="email" required>  
    </div>
    <div>
        <label for="monMessage">Votre message :</label> 
        <input type="date" id="monMessage" name="message" required>    
    </div>

    <button type="submit">Envoyer</button>
</form>
```

Lorsque le formulaire est soumis, le fichier `traitement-contact.php` récupère les informations saisies et les affichent :

```php
<?php
/* traitement-contact.php */
// Si la méthode HTTP de la requête est "POST"
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $nom = $_POST['nom'];
    $dateDeNaissance = $_POST['dateDeNaissance'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    // Afficher les données
    echo "<h2>Informations soumises :</h2>";
    echo "Nom : " . $nom . "<br>";
    echo "Date de naissance : " . $dateDeNaissance . "<br>";
    echo "Adresse Email : " . $email . "<br>";
    echo "Message : " . $message . "<br>";
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

- [Traiter des formulaires avec PHP (Apprendre PHP)](https://www.apprendre-php.com/tutoriels/tutoriel-12-traitement-des-formulaires-avec-get-et-post.html)
- [Valider des formulaires avec PHP (Pierre GIRAUD)](https://www.pierre-giraud.com/php-mysql-apprendre-coder-cours/securiser-valider-formulaire/)


> Valider votre travail avec un formateur.
