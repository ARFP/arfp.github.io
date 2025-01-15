---
title: "PHP: Formulaires 2"
serie: "php"
order: 13
---

## Prerequis

- Avoir terminé la partie précédente [Introduction aux formulaires avec PHP](./formulaires-intro).

## Corrigé type

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
        <input type="email" id="monEmail" name="email" required>  
    </div>
    <div>
        <label for="monMessage">Votre message :</label> 
        <textarea id="monMessage" name="message" required></textarea>    
    </div>

    <button type="submit">Envoyer</button>
</form>
```

Lorsque le formulaire est soumis, le fichier `traitement-contact.php` :
1. Vérifie qu'il s'agit bien d'une requête **POST**,
2. Récupère les informations saisies,
3. Affiche les informations saisies.

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

Le script ci-dessus fonctionne mais n'effectue aucun contrôle sur la saisie utilisateur. Si un utilisateur malveillant soumet des informations vérolées (des balises HTML, du Javascript etc...), votre système et vos utilisateurs sont exposés.

En d'autres termes, le code précédent est une porte ouverte pour les eventuels pirates...

Il convient donc de contrôler toutes les données transmises. Pour chaque champ du formulaire, vous devez : 
1. Vérifier que tous le champ a bien été soumis
2. Vérifier que la donnée soumise correspond au format attendu
3. Nettoyer les données qui peuvent contenir du code malveillant

Par exemple, 

- Pour du texte, une expression régulière permet de contrôler que la donnée respecte un certain format.
- Pour les données numériques, il convient de s'assurer que la donnée soumise est bien un nombre (entier ou décimal, selon le besoin).

PHP propose des fonctions permettant de contrôler la majorité des formats de données soumises dans les formulaires.

Dans l'exercice courant, il convient donc de contrôler le nom, la date de naissance, l'adresse email et le message soumis dans le formulaire. Le code ci-dessous illustre ces contrôles de saisie.

```php
<?php
/* traitement-contact.php avec contrôle de saisie */
// Si le tableau $_POST n'est pas vide, il s'agit d'une requête de type POST
if (!empty($_POST)) {

    try {
        // Vérification que toutes les données ont bien été soumises
        // Si l'une des donnée est manquante, on affiche un message d'erreur
        if(!isset($_POST['nom'], $_POST['dateDeNaissance'],     $_POST['email'], $_POST['message'])) {
            throw new Exception('Le formulaire est incomplet');
        }

        // Récupérer les données du formulaire dans des variables
        $nom = $_POST['nom'];
        $dateDeNaissance = $_POST['dateDeNaissance'];
        $email = $_POST['email'];
        $message = $_POST['message'];

        // contrôle des données une par une
    
        // Si le nom ne respecte pas le format attendu : erreur
        if(!preg_math('/^[a-zA-Z]{2,}$/', $nom)) {
            throw new Exception('Le format du nom est incorrect');
        }

        $date = new DateTime($dateDeNaissance);
        $now = new DateTime();
        // Si la date soumise n'est pas dans le passé: erreur
        if($date >= $now) {
            throw new Exception('La date est invalide');
        }

        // Si le format de l'email est incorrect : erreur
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            throw new Exception('Le format de l\'adresse e-mail est incorrect.');
        }

        // Nettoyage du message (suppression des balises HTML)
        $message = strip_tags($message);
        // Convertit les sauts de lignes en balises `<br>`
        $message = nl2br($message);

        // A partir de ce point, on estime que les données sont correctes (aucune erreur levée)

        // Afficher les données
        echo "<h2>Informations soumises :</h2>";
        echo "Nom : " . $nom . "<br>";
        echo "Date de naissance : " . $dateDeNaissance . "<br>";
        echo "Adresse Email : " . $email . "<br>";
        echo "Message : <div>" . $message . "</div><br>";
    }
    catch(Exception $ex) {
        // Si une erreur est levée dans le bloc "try" ci-dessus, l'erreur correspondante est affichée
        echo $ex->getMessage();
        exit;
    } // fin du try/catch 

} // fin du if $_SERVER["REQUEST_METHOD"] == "POST"

```

> 