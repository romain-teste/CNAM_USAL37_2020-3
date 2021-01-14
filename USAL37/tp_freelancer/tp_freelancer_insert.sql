USE tp_feelancer;

INSERT INTO customers_cats
(cat_id, cat_name)
VALUES
(1, 'Particulier'),
(2, 'Secteur public'),
(3, 'Entreprise');

INSERT INTO customers
(customer_name, customer_email, cat_id)
VALUES
('Mike','Micke@test.fr','1'),
('Jon','j@test.fr','1'),
('FISC','fisc@test.fr','2'),
('Plombier Machin','plombier@test.fr','3');

INSERT INTO jobs
(job_state, job_title, customer_id)
values
('en cours', 'site wordpress pour mike',1),
('terminé', 'site prestashop pour Mike',1),
('en cours', 'site drupal pour Jon',2);