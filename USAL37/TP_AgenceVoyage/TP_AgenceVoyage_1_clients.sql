/*
1) 	Créer la table "sales" (commerciaux) et ajouter 5 commerciaux

2) 	Créer la table "clients" et ajouter 5 clients dans la table
	Chaque client est associé à un commercial différent 
    
3) 	Sélectionnez tous les clients (nom du commercial associé inclus)

*/

use usal37_agence;

CREATE TABLE sales 
(
	com_code CHAR(5) PRIMARY KEY,
    com_name VARCHAR(64),
    com_password CHAR(60)
);

INSERT INTO sales 
(com_code, com_name, com_password) 
VALUES 
('BA201', 'Berthier Aline', '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'),
('NJ247', 'Neymar Jean', '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'),
('PJ714', 'Paute Jessie', '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'),
('PM654', 'Poglio Marcel', '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'),
('YT023', 'Yoyo Tata', '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi');


CREATE table clients 
(
	client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_lastname VARCHAR(32) NOT NULL,
    client_firstname VARCHAR(32) NOT NULL,
    client_email VARCHAR(128) NOT NULL,
    client_phone CHAR(16) NOT NULL,
    client_added DATE NOT NULL,
    client_password CHAR(60) NOT NULL,
    com_code CHAR(5) NOT NULL, 
    FOREIGN KEY (com_code) REFERENCES sales(com_code) 
);

INSERT INTO clients 
(com_code, client_lastname, client_firstname, client_email, client_phone, client_added, client_password) 
VALUES 
('BA201', 'Dupont', 'Ernest', 'a@a.fr', 		'0102030405', NOW(), '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'), 
('NJ247', 'Dupond', 'Louis', 'b@b.fr', 		'0203040506', NOW(), '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'), 
('PJ714', 'Martin', 'Léo', 'c@c.fr', 	 	'0312345678', NOW(), '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'), 
('PM654', 'Devoldère', 'Mickaël', 'd@d.fr', 	'0678963214', NOW(), '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi'), 
('YT023', 'Ben', 'Joe', 'e@e.fr', 			'0698741235', NOW(), '$2y$10$OpUTjAUsVuKtCstwAq5DeOVWPgofb2d2v.tsQuUCIgezmBqiv4fEi');

SELECT client_email, client_password FROM clients;

SELECT client_id, client_lastname, client_email, client_phone, client_added, com_code FROM clients;



SELECT * FROM clients 
JOIN sales ON clients.com_code = sales.com_code
;


