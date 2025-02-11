/* SUPPRIMER la base de données "rezo_social" */

DROP DATABASE IF EXISTS rezo_social;

/* CREER la base de données "rezo_social" */

CREATE DATABASE IF NOT EXISTS rezo_social;

/* Sélectionner la base de données */

USE rezo_social;

CREATE TABLE utilisateur 
(
	id INT PRIMARY KEY,
    nom_utilisateur VARCHAR(32) NOT NULL UNIQUE,
    email VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE aimer 
(
	id INT,
    pub_id INT,
    PRIMARY KEY (id, pub_id)
);

CREATE TABLE publication 
(
	pub_id INT AUTO_INCREMENT PRIMARY KEY,
    pub_date DATETIME NOT NULL,
    pub_titre VARCHAR(255),
    pub_contenu TEXT,
    id INT
);

/* Modifier la table publication et y ajouter une clé étrangère */
ALTER TABLE publication ADD FOREIGN KEY (id) REFERENCES utilisateur(id);

ALTER TABLE aimer ADD CONSTRAINT fk_aimer_utilisateur FOREIGN KEY (id) REFERENCES utilisateur(id);

ALTER TABLE aimer ADD CONSTRAINT fk_aimer_publication FOREIGN KEY (pub_id) REFERENCES publication(pub_id);

/* ALTER TABLE aimer 
	ADD CONSTRAINT fk_aimer_utilisateur FOREIGN KEY (id) REFERENCES utilisateur(id),
    ADD CONSTRAINT fk_aimer_publication FOREIGN KEY (pub_id) REFERENCES publication(pub_id); */

/* ALTER TABLE aimer DROP CONSTRAINT fk_aimer_utilisateur; */ 




