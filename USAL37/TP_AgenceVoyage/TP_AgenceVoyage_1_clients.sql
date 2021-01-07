/*
1) 	Créer la table "sales" (commerciaux) et ajouter 5 commerciaux

2) 	Créer la table "clients" et ajouter 5 clients dans la table
	Chaque client est associé à un commercial différent 
    
3) 	Sélectionnez tous les clients (nom du commercial associé inclus)
<<<<<<< Updated upstream


SUITE 

4) Créer la table de liaison entre clients et trips
	nom de la table : orders 
    order_quantity & order_paid sont des colonnes de la tables de liaison (orders)
    
5) (bonus) créer une requête SELECT pour afficher : les voyages avec le nom du client associé

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
JOIN sales ON clients.com_code = sales.com_code; 

CREATE TABLE orders
(
   trip_code INT,
   client_id INT,
   order_quantity INT NULL,
   order_paid TINYINT(1) NULL,
   PRIMARY KEY(trip_code, client_id)
);

alter table orders
	add constraint fk_orders_trips FOREIGN KEY(trip_code) REFERENCES trips(trip_code),
    add constraint fk_orders_client FOREIGN KEY(client_id) REFERENCES clients(client_id);
    
insert into orders
(trip_code, client_id, order_quantity, order_paid)
values
('1', '5', '2', 1),
('2', '5', '3', 0),
('3', '1', '2', 1);

/* afficher : les voyage avec le nom du client associé*/

select *from trips
join orders on trips.trip_code = orders.trip_code
join clients on orders.client_id = clients.client_id;

select *from trips
left join orders on trips.trip_code = orders.trip_code
left join clients on orders.client_id = clients.client_id;

select *from trips
right join orders on trips.trip_code = orders.trip_code
right join clients on orders.client_id = clients.client_id;
=======
*/

USE usal37_agence;

DROP table IF EXISTS sales;

CREATE TABLE if not exists sales
(
	com_code char(5),
    com_name varchar (64) not null,
    com_password char(60) not null,
    primary key (com_code)
);

DROP table IF EXISTS clients;
CREATE TABLE if not exists clients
(
	client_id int auto_increment,
    client_lastname varchar(32) not null,
    client_firstname varchar(32) not null,
    client_email varchar(128) not null,
    client_phone char(16),
    client_added date,
    client_password varchar(60),
    com_code char(5),
    primary key (client_id)
); 

ALTER TABLE clients 
ADD CONSTRAINT fk_clients_sales FOREIGN KEY (com_code) REFERENCES sales(com_code);


insert into sales
(com_code, com_name, com_password)
values
('UGIT7','DUPONT','AZZAAA'),
('AZER5','DUC','ERRTTT'),
('HPOS9','VICTOR','AZERT'),
('PSVR3','BEGANOVIC','12345T'),
('XFRP6','TESTE','HJYT78');

insert into clients
(client_lastname, client_firstname, client_email, client_phone, client_added, client_password, com_code)
values
('julien', 'echaud', 'ju.ec@gmail.com', '+33745673456', now(), 'JGFHJ7','UGIT7'),
('margaux', 'eric', 'ma.er@gmail.com', '+33654782367', now(), 'MLKJH','AZER5'),
('Loic', 'espin', 'lo.ES@gmail.com', '+33645986483', now(), 'KJHGTGVCF','HPOS9'),
('dani', 'papa', 'da.pa@gmail.com', '+33723649045', now(), 'KJSUZD9','PSVR3'),
('laura', 'ville', 'la.vi@gmail.com', '+33689452389', now(), 'JHSDT6S','XFRP6');

select * from clients
join sales on clients.com_code = sales.com_code

>>>>>>> Stashed changes


