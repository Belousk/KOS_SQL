/*1 задание*/
DROP VIEW IF EXISTS orders_customers_employees;
CREATE VIEW orders_customers_employees AS 
SELECT order_date, required_date, shipped_date, ship_postal_code, company_name, contact_name, phone, last_name, first_name, title 
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING(employee_id);

SELECT *
FROM orders_customers_employees
WHERE order_date > '1997-01-01';

/*2 задание*/
DROP VIEW IF EXISTS orders_customers_employees;
CREATE VIEW orders_customers_employees AS 
SELECT order_date, required_date, shipped_date, ship_postal_code, ship_country, company_name, contact_name, phone, last_name, first_name, title
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING(employee_id);

ALTER VIEW orders_customers_employees 
ADD COLUMN postal_code VARCHAR(20), 
ADD COLUMN ship_country VARCHAR(50), 
ADD COLUMN reports_to INT;

ALTER VIEW orders_customers_employees
RENAME TO orders_customers_employees_old;

CREATE VIEW orders_customers_employees AS 
SELECT order_date, required_date, shipped_date, ship_postal_code, ship_country, company_name, contact_name, phone, last_name, first_name, title, customers.postal_code, reports_to
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING(employee_id);

SELECT * 
FROM orders_customers_employees
ORDER BY ship_country;

DROP VIEW orders_customers_employees_old;
/*3 задание*/

CREATE VIEW active_products AS 
SELECT *
FROM products
WHERE discontinued = 0
WITH LOCAL CHECK OPTION;


INSERT INTO active_products
VALUES (1000, 'Пинок', 3, 4, 12, 20023, 120, 80, 5, 1);



