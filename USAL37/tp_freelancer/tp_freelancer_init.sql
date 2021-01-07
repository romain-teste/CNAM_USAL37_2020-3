DROP DATABASE IF EXISTS tp_feelancer;

CREATE DATABASE tp_feelancer DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE tp_feelancer;

CREATE TABLE customer_cats
(
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_nam VARCHAR(50) NOT NULL,
    cat_description TEXT NOT NULL
);

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_nam VARCHAR(50) NOT NULL,
    customer_email VARCHAR(255) NOT NULL,
    cat_id INT
);

CREATE TABLE jods
(
	job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_stat CHAR(10) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    job_start DATETIME NOT NULL,
    job_end DATETIME NOT NULL,
    job_description TEXT NOT NULL,
    customer_id INT
);

CREATE TABLE quotes
(
	quote_id INT PRIMARY KEY AUTO_INCREMENT,
    quote_state CHAR(10) NOT NULL,
    quote_date DATE NOT NULL,
    quote_amount INT NOT NULL,
    quote_final_dat DATE NOT NULL,
    quot_final_amount INT NOT NULL,
    job_id INT
);

ALTER TABLE customers 
ADD 
	CONSTRAINT fk_customers_cats FOREIGN KEY (cat_id) REFERENCES cats(cat_id);

ALTER TABLE jods 
ADD 
	CONSTRAINT fk_jods_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE quotes 
ADD 
	CONSTRAINT fk_quotes_jods  FOREIGN KEY (job_id) REFERENCES jods (job_id);




