---
title: "PHP: Authentification"
serie: "php"
order: 19
---

Dans ce document, vous serez initié à l'authentification avec PHP et une base de données MySQL.

Pour démarrer, créons une base de données qui stockera les comptes utilisateurs.

```sql
/* mysql */
DROP DATABASE IF EXISTS demo_auth;

CREATE DATABASE IF NOT EXISTS demo_auth;

USE demo_auth;

CREATE TABLE tbl_users 
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(50) UNIQUE NOT NULL,
    `password` VARCHAR(128) NOT NULL
);

INSERT INTO tbl_users 
(`username`, `password`)
VALUES 
('maman', '$argon2id$v=19$m=65536,t=4,p=1$ZlVHdGNnejUybzJyYzF3cg$erdxiPjnXY3ZxfP8mxrj7ETtWv7D/ROcPr8lRC/k59k'), 
('papa', '$argon2id$v=19$m=65536,t=4,p=1$UUd0cUp6OVpzTE5QekloaA$Z1igb3NJr2lqr/FK+AJMLjEZMFewTxMA3al6+VU2d/Y'),
('toto', '$argon2id$v=19$m=65536,t=4,p=1$NFhKOVEzTlVKVWh0c0tsUA$1YoRbCsjfhhsQynoxBdGSaKm4jnOyOjoHbh80BKZOR0');
```

**Informations sur les 3 comptes utilisateur :**

| id | username | mot de passe | mot de passe chiffré avec ARGON_2ID |
| --- | --- | --- | --- |
| 1 | maman | azer1234 | $argon2id$v=19$m=65536,t=4,p=1$ZlVHdGNnejUybzJyYzF3cg$erdxiPjnXY3ZxfP8mxrj7ETtWv7D/ROcPr8lRC/k59k |
| 2 | papa | baba0123! | $argon2id$v=19$m=65536,t=4,p=1$UUd0cUp6OVpzTE5QekloaA$Z1igb3NJr2lqr/FK+AJMLjEZMFewTxMA3al6+VU2d/Y |
| 3 | toto | my:PasswOrd | $argon2id$v=19$m=65536,t=4,p=1$NFhKOVEzTlVKVWh0c0tsUA$1YoRbCsjfhhsQynoxBdGSaKm4jnOyOjoHbh80BKZOR0 |

Nous devons créer un répertoire pour ce petit projet dont l'arborescence sera : 

```
/mon_projet/
    - index.php
    - auth.php
    Dao/
        - DbConnect.php
        - AuthRepository.php
```

### /Dao/DbConnect.php : Classe de connexion à la base de données

```php
<?php 
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
            self::$instance = new PDO('mysql:host=localhost;port=3306;dbname=demo_auth;charset=utf8', 'root', '');
        }

        return self::$instance;
    }
}
```

### /Dao/AuthRepository.php : Classe d'accès aux données de la table tbl_users

```php
<?php 
/* /Dao/AuthRepository.php */ 

// inclusion de la classe DbConnect qui sera utilisée dans la méthode signIn()
require_once 'Dbconnect.php';

class AuthRepository 
{
    /**
     * Identifie un utilisateur
     * @param string $username le nom d'utilisateur renseigné dans le formulaire
     * @param string $password le mot de passe renseigné dans le formulaire
     * @return array l'utilisateur trouvé (ou un tableau vide si l'utilisateur n'a pas été trouvé)
    */
    public static function signIn(string $username, string $password): array {

        /** @var PDO $db connexion à la base de données */
        $db = Dbconnect::getInstance();

        /** @var array $user le tableau qui contiendra les données de l'utilisateur  */
        $user = [];


        /** @var PDOStatement $stmt initialisation de la requête préparée */
        $stmt = $db->prepare("SELECT * FROM tbl_users WHERE username=:username");

        // exécution de la requêtes préparée
        // execute() retourne true si la requête a été exécutée avec succés, sinon false
        if($stmt->execute([':username' => $username])) {
            // récupération de l'utilisateur
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if($user === false) { // Si l'utilisateur n'a pas été trouvé
                $user = [];
            }
            else if(!password_verify($password, $user['password'])) { // Si le mot de passe est incorrect
                $user = [];
            }
        }
    
        // fermeture de la requête (pour libérer les ressources)
        $stmt->closeCursor();

        // Retourne l'utilisateur trouvé (ou un tableau vide si l'utilisateur n'a pas été trouvé)
        return $user;
    }
}
```

### /index.php : Formulaire d'identification.

```html
<!-- index.php -->
<style>
    form { width: 800px; margin: auto; }
    label { display:inline-block; width: 200px;}
    div { margin: 10px; }
</style>
<form action="auth.php" method="POST">
    <div>
        <label for="myUsername">Nom d'utilisateur</label>
        <input type="text" name="username" id="myUsername">
    </div>
    <div>
        <label for="myPassword">Mot de passe</label>
        <input type="password" name="password" id="myPassword">
    </div>
    <div>
        <button type="submit">S'identifier</button>
    </div>
</form>
```

### /Auth.php : Traitement du formulaire

```php
<?php 
/* auth.php */

require_once 'Dao/AuthRepository.php';

if(!empty($_POST)) {
    try {
        if(!isset($_POST['username'], $_POST['password'])) {
            throw new Exception('Formulaire incomplet');
        }

        $username = $_POST['username'];
        $password = $_POST['password'];

        $user = AuthRepository::signIn($username, $password);

        if(empty($user)) {
            throw new Exception('Nom d\'utilisateur ou mot de passe incorrect !');
        }

        echo 'Bonjour '.$user['username'].', vous êtes connecté.';
    } 
    catch(Exception $ex) {
        echo $ex->getMessage();
    }
}

```