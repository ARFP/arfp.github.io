CREATE DATABASE IF NOT EXISTS `db_cities` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `db_cities`;

CREATE TABLE pays(
   id INT AUTO_INCREMENT,
   codePays CHAR(2) NOT NULL,
   nomPays VARCHAR(255) NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(codePays)
);

CREATE TABLE ville(
   id INT AUTO_INCREMENT,
   codePostalVille CHAR(5) NOT NULL,
   nomVille VARCHAR(255) NOT NULL,
   idPays INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(idPays) REFERENCES pays(id)
);

INSERT INTO pays 
(id, codePays, nomPays)
VALUES 
(1, 'FR', 'France'),
(2, 'BE', 'Belgique'),
(3, 'DE', 'Allemagne');

INSERT INTO ville 
(id, codePostalVille, nomVille, idPays) 
VALUES 
(1, '59000', 'Lille', 1),
(2, '1000', 'Bruxelles', 2),
(3, '68100', 'Mulhouse', 1),
(4, '68000', 'Colmar', 1),
(5, '10115', 'Berlin', 3);
