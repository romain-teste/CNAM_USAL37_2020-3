USE tp_feelancer;

SELECT 
customer_name, cat_name
FROM customers
JOIN customers_cats ON customers.cat_id = customers_cats.cat_id;

SELECT customer_id, customer_name, customer_email
FROM customers;

SELECT 
job_title,
J.customer_id,
customer_name, cat_name
from jobs AS J
JOIN customers AS C ON J.customer_id = C.customer_id
join customers_cats AS CAT ON C.cat_id = CAT.cat_id;

