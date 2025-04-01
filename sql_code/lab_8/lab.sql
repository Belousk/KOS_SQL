/*Задание 1*/
insert into customers(customer_id, contact_name, city, country, company_name)
values 
('AAAAA', 'Alfred Mann', NULL, 'USA', 'fake_company'),
('BBBBB', 'Alfred Mann', NULL, 'Austria','fake_company');


SELECT contact_name, city, country
FROM customers
ORDER BY 
    contact_name ASC, 
    COALESCE(city, country) ASC;

/*Задание 2*/

SELECT product_name, unit_price, 
CASE WHEN unit_price >= 100 THEN 'too expensive'
	WHEN unit_price >= 50 AND unit_price < 100 THEN 'average'
	WHEN unit_price < 50 THEN 'low price'
	ELSE 'undefined price'
END AS price_rating
FROM products;

/*Задача 3*/

SELECT contact_name, 
CASE 
	WHEN order_id IS NULL THEN 'no orders'
	ELSE 'some orders'
END AS order_existance
FROM customers
LEFT JOIN  orders USING(customer_id)
WHERE order_id is NULL;

/*Задача 4*/

SELECT first_name, last_name,
CASE
	WHEN title = 'Sales Representative' THEN 'Sales Stuff'
	ELSE title
END AS refactored_title
FROM employees


