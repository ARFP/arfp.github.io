---
title: "PHP: Formulaires 3"
serie: "php"
order: 14
---

## Prerequis

- Avoir terminé et corrigé la partie précédente [Introduction aux formulaires avec PHP](./formulaires-intro).

## Validation des données du formulaire

Dans la partie précédente, vous avez implémenté un formulaire de contact avec un traitement backend dans un script PHP.

Une fois les données validées, il vous a été demandé de les afficher.

Dans cette partie, vous allez mettre en place la persistance dans une base de données.

Reprenons l'exemple de la partie 1 : 

**Le formulaire...** 

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

**...et le traitement backend avec les contrôles de saisie**

```php
<?php
// traitement.php 
// Si la méthode HTTP de la requête est "POST"
if (!empty($_POST)) { 
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
        if(!preg_match('/^[a-zA-Z]{2,50}$/', $nom)) {
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

Une fois les contrôles de saisie effectués, il convient maintenant d'exploiter les données du formulaire.

Selon le besoin, vous pouvez : 

- Afficher les données sans rien faire d'autre
    - c'est ce qui est fait dans l'exemple ci-dessus
- Transmettre les données par email 
    - pour un formulaire de contact par exemple
- Enregistrer les données dans une base de données 
    - c'est ce que nous allons faire dans la suite de ce document

## La base de données

Pour illustrer la persistance des données, nous allons créer une petite base de données qui stockera les informations transmises par notre formulaire.

Cette base de donnés contiendra 1 seule table comme illustré dans le code ci-dessous.

```sql
/* mysql */
DROP DATABASE IF EXISTS demo_formulaire;

CREATE DATABASE IF NOT EXISTS demo_formulaire;

USE demo_formulaire;

CREATE TABLE tbl_formulaire 
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    age INT NOT NULL
);
```

Une fois la base de données en place, nous pouvons implémenter une couche d'accès aux données qui sera composée de 2 éléments : 

- Une classe `DbConnect` qui servira à se connecter à la base de données.
    - Cette classe implémentera le Design Pattern **Singleton**
- Une classe `FormRepository` qui contiendra les "requêtes" vers la base de données.

Ces 2 classes seront créées dans un sous dossier **Dao** du projet.

L'arborescence du projet doit ressembler à ceci :

```
/mon-projet/
    - index.html (le formulaire)
    - traitement.php (traitement du formulaire)
    - Dao/
        - DbConnect.php (la classe de connection à la base de données)
        - FormRespository.php (la classe qui contiendra les opérations vers la base de données)
```

```php
/* /Dao/DbConnect.php */ 
/**
 * Classe de connexion à la base de données  
*/
class DbConnect 
{
    /** @var PDO|null $instance stockage de l'instance PDO unique */
    private static ?PDO $instance = null;

    /**
     * Créer et retourne l'instance PDO 
     * @return PDO l'instance PDO créée
    */
    public static function getInstance(): PDO {
        if(self::$instance === null) {
            self::$instance = new PDO('mysql:host=localhost;port=3306;dbname=demo_formulaire;charset=utf8', 'root', '');
        }

        return self::$instance;
    }
}
```


```php
/* /Dao/FormRepository.php */ 

// inclusion de la classe DbConnect qui sera utilisée dans la méthode insertData()
require_once 'Dbconnect.php';

class FormRepository 
{
    /**
     * Ajoute une nouvelle ligne dans la table 'tbl_formulaire'
     * @param string $nom le nom renseigné dans le formulaire
     * @param int l'âge renseigné dans le formulaire
     * @return bool TRUE si l'ajout a réussi, sinon FALSE
    */
    public static function insertData(string $nom, int $age): bool {

        /** @var PDO $db connexion à la base de données */
        $db = Dbconnect::getInstance();

        /** @var $nblines stockera le nombre de lignes affectées par la requête */
        $nblines = 0;

        /** @var PDOStatement $stmt initialisation de la requête préparée */
        $stmt = $db->prepare("INSERT INTO tbl_formulaire (nom, age) VALUES (:nom, :age)");

        // exécution de la requêtes préparée
        // execute() retourne true si la requête a été exécutée avec succés, sinon false
        if($stmt->execute([':nom' => $nom, ':age' => $age])) {
            // récupération du nombre de lignes affectées par la requête
            $nblines = $stmt->rowCount();
        }

        // fermeture de la requête (pour libérer les ressources)
        $stmt->closeCursor();

        // Retourne le résultat. 
        // Si le nombre de lignes affectées est égal à 1, les données ont bien été insérées
        return $nblines == 1;
    }
}
```

Une fois ces classes implémentées, nous pouvons maintenant invoquer la méthode **insertData** de la classe **FormRepository** afin d'enregistrer les données du formulaire dans la base de données.

Cette méthode sera appelée dans le fichier **traitement.php** après la validation des données.

Le code ci-dessous illustre les modifications apportées au fichier **traitement.php** : 

```php
<?php
// traitement.php avec persistance des données

// inclusion de la classe FormRepository afin d'y avoir accès
require_once 'Dao/FormRepository.php';

// Si la méthode HTTP de la requête est "POST"
if (!empty($_POST)) { 
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

        // Sauvegarde dans la base de données et affichage du résultat
        if(FormRepository::insertData($nom, $age)) {
            echo 'Les données ont bien été sauvegardées';
        } else {
            echo 'Erreur lors de la sauvegarde des données';
        }

        // Ajout d'un lien pour retourner vers le formulaire
        echo '<p><a href="index.html">Retour au formulaire</a></p>';

        
    } catch(Exception $ex) {
        // Si une erreur est levée dans le bloc "try" ci-dessus, l'erreur correspondante est affichée et le script s'arrête
        echo $ex->getMessage();
        exit;
    }    
}
```

## Exercez vous

### Formulaire de contact

Reprenez l'exercie "Formulaire de contact" que vous avez réalisé précédemment

**Tâches à réaliser :**

1. Créer une base de données **db_contact** dans laquelle vous ajouterez une table **tbl_contact**
    - La table doit permettre de stocker toutes les informations saisies dans le formulaire et contiendra les champs suivants (tous obligatoires):
        - id INT AUTO_INCREMENT PRIMARY KEY
        - nom VARCHAR(50)
        - date_naissance DATE
        - email VARCHAR(128)
        - message TEXT
2. Créer la classe **Dbconnect** en reprenant les informations de connexion à votre base de données
3. Créer la classe **ContactRepository** qui contiendra une méthode **insertMessage** qui permettra d'ajouter une nouvelle ligne dans la table **tbl_contact**
4. Dans le fichier **traitement-contact.php**
    1. Invoquer la méthode **insertMessage** de la classe **ContactRepository** après la validation des données.
    2. Afficher le résultat de l'insertion : 
        - "*Votre message a été envoyé*" en cas de succès.
        - "*Erreur lors de l'enregistrement de votre message*" en cas d'échec.
    3. Ajouter un lien permettant à l'utilisateur de retourner vers le formulaire de contact.


> Valider votre travail avec un formateur.
