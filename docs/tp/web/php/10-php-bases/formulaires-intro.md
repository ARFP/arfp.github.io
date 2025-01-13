---
title: "PHP: Formulaires"
serie: "php"
order: 12
---

Le HTML permet de créer des formulaires. Cependant, pour récupérer et manipuler les données envoyées, un langage "serveur" (PHP, Java, C#...) est nécessaire. 

Voici un exemple simple de formulaire traité avec PHP pour vous aider à démarrer. 

Ce formulaire permet à un utilisateur de saisir son nom, puis affiche ces informations après la soumission.

### Formulaire HTML

```html
<body>
    <h1>Formulaire PHP</h1>
    <form action="traitement.php" method="post">
        <label for="monNom">Nom :</label> 
        <input type="text" id="monNom" name="nom" required>        
        <button type="submit">Envoyer</button>
    </form>
</body>
```

Dans le code précédent : 

- La balise `<form>` contient 2 attributs : 
    - **action="traitement.php"** : indique vers quel script les données du formulaire seront soumises. 
    - **method="POST"** : indique la méthode HTTP utilisée pour transmettre les données au script indiqué par l'attribut *action*.


### Script PHP (traitement.php)

```php
<?php
// Si la méthode HTTP de la requête est "POST"
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $nom = $_POST['nom'] ?? "Anonyme";
    // Afficher les données
    echo "<h2>Informations soumises :</h2>";
    echo "Nom : " . $nom . "<br>";
}
```

### Explications :

- **Formulaire HTML :**
    - Le formulaire utilise la méthode `POST` pour envoyer les données à `traitement.php`.
    - Le champ `nom` est requis (required).

- **Script PHP :**
    - Le script vérifie si la méthode de la requête est `POST`.
    - Les données du formulaire sont récupérées.
    - Les informations saisies sont ensuite affichées.

