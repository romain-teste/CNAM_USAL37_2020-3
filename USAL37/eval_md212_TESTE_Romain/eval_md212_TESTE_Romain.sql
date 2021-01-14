DROP DATABASE IF EXISTS usal37_evaluation_ReparTout;

CREATE DATABASE usal37_evaluation_ReparTout DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE usal37_evaluation_ReparTout;

CREATE TABLE Clients(
   client_id INT AUTO_INCREMENT,
   client_nom VARCHAR(32) NOT NULL,
   client_prenom VARCHAR(32) NOT NULL,
   cient_adresse VARCHAR(255) NOT NULL,
   client_telephone CHAR(16) NOT NULL,
   PRIMARY KEY(client_id)
);

CREATE TABLE categories(
   categorie_id INT AUTO_INCREMENT,
   catégorie_type VARCHAR(32) NOT NULL,
   PRIMARY KEY(categorie_id)
);

CREATE TABLE mecaniciens(
   mecanicien_id INT AUTO_INCREMENT,
   mecanicien_nom VARCHAR(32),
   mecanicien_prenom VARCHAR(32),
   categorie_id INT NOT NULL,
   PRIMARY KEY(mecanicien_id),
   FOREIGN KEY(categorie_id) REFERENCES categories(categorie_id)
);

CREATE TABLE reparations(
   reparation_id INT AUTO_INCREMENT,
   reparation_demande DATETIME NOT NULL,
   reparation_duree TIME NOT NULL,
   reparation_prix DECIMAL(8,2) NOT NULL,
   categorie_id INT NOT NULL,
   mecanicien_id INT NOT NULL,
   client_id INT NOT NULL,
   PRIMARY KEY(reparation_id),
   FOREIGN KEY(categorie_id) REFERENCES categories(categorie_id),
   FOREIGN KEY(mecanicien_id) REFERENCES mecaniciens(mecanicien_id),
   FOREIGN KEY(client_id) REFERENCES Clients(client_id)
);

CREATE TABLE creneaux(
   creneau_id INT AUTO_INCREMENT,
   creneau_debut DATETIME NOT NULL,
   creneau_fin DATETIME NOT NULL,
   mecanicien_id INT NOT NULL,
   reparation_id INT NOT NULL,
   PRIMARY KEY(creneau_id),
   UNIQUE(reparation_id),
   FOREIGN KEY(mecanicien_id) REFERENCES mecaniciens(mecanicien_id),
   FOREIGN KEY(reparation_id) REFERENCES reparations(reparation_id)
);

