DROP DATABASE IF EXISTS tp_feelancer;

CREATE DATABASE tp_feelancer DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE tp_feelancer;

CREATE TABLE customers_cats
(
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(50) NOT NULL,
    cat_description TEXT NULL
);

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(255) NOT NULL,
    cat_id INT
);

CREATE TABLE jobs
(
	job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_state CHAR(10) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    job_start DATETIME NULL,
    job_end DATETIME NULL,
    job_description TEXT NULL,
    customer_id INT
);

CREATE TABLE quotes
(
	quote_id INT PRIMARY KEY AUTO_INCREMENT,
    quote_state CHAR(10) NOT NULL,
    quote_date DATE NOT NULL,
    quote_amount INT NOT NULL,
    quote_final_date DATE NULL,
    quote_final_amount INT NULL,
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




