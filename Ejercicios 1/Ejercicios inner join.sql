/* 52. INNER JOIN*/

USE coffee_store;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM customers;

DESCRIBE products;
DESCRIBE orders;
DESCRIBE customers;
 
 SELECT products.name, products.price, orders.order_time FROM orders
 INNER JOIN products ON orders.product_id = products.id;
 
 SELECT products.name, products.price, products.coffee_origin, orders.order_time FROM orders
 INNER JOIN products ON products.id = orders.product_id;
 
 SELECT p.name, p.price, p.coffee_origin, o.order_time FROM products p
 JOIN orders o ON o.product_id = p.id;
 
 SELECT p.name, p.price, o.order_time FROM orders o 
 JOIN products p ON o.product_id = p.id
 ORDER BY o.order_time;
 
 SELECT p.name, p.price, o.order_time FROM orders o 
 JOIN products p ON o.product_id = p.id
 WHERE o.order_time BETWEEN '2017-02-01' AND '2017-02-28';
 
 
 SELECT p.name, p.price, o.order_time FROM orders o 
 JOIN products p ON o.product_id = p.id
 WHERE o.order_time BETWEEN '2017-02-01' AND '2017-02-28'
 AND o.product_id = 5
 ORDER BY o.order_time;
 
 SELECT customers.first_name, customers.last_name, orders.order_time FROM customers
 JOIN orders ON customers.id = orders.customer_id
 WHERE customers.last_name LIKE 'W%'
 AND orders.order_time BETWEEN '2017-02-01' AND '2017-02-28'
 LIMIT 4;
 
 SELECT c.first_name, c.gender, c.phone_number, o.order_time FROM customers c 
 JOIN orders o ON c.id = o.customer_id
 WHERE c.phone_number IS NOT NULL
 AND o.order_time BETWEEN '2017-02-01' AND '2017-02-28'
 AND c.gender = 'F';
 
 
 /*  53. LEFT JOIN*/
 SELECT * FROM customers;
 SELECT * FROM orders;
 
 UPDATE orders 
 SET customer_id = NULL 
 WHERE id = 1;
 
 /* LEFT JOIN ----> Regresa toda la data de la Tabla 1(orders) y solo regresa el Match de la Tabla 2(customers), 
 no regreso información de phone_number ni last_name porque no habia nada, solo regreso data de la 1ra tabla(orders) que fue la columna order_time. Aquí si importa el orden de la parte 'ON ...='  */
 SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o 
 LEFT JOIN customers c ON o.customer_id = c.id
 ORDER BY o.order_time
 LIMIT 10;
 
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10;
 
 
 
 /* 54. RIGHT JOIN ----> Regresa toda la información de la tabla 2(orders) y
 solo regresa la infromación donde hace match con la tabla 1(customers)*/ 
 
 SELECT * FROM products;
 SELECT * FROM orders;
 SELECT * FROM customers;
 
 SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c 
 RIGHT JOIN orders o ON c.id = o.customer_id
 ORDER BY order_time
 LIMIT 10;
 
  SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o 
 RIGHT JOIN customers c ON o.customer_id = c.id
 ORDER BY order_time
 LIMIT 10;
 
 UPDATE orders
 SET customer_id = 1
 WHERE id = 1;
 
 /* 55. Joining two than two tables  */
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;
DESCRIBE customers;
DESCRIBE orders;
DESCRIBE products;

SELECT p.name, p.price, c.first_name, c.last_name, o.order_time FROM products p 
JOIN orders o ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id;


SELECT p.name, p.price, c.first_name, c.last_name, o.order_time FROM products p 
JOIN orders o ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id
WHERE c.last_name = 'Martin'
ORDER BY o.order_time; 
 
 
 /* 56. Ecercise*/ 
 
 SELECT o.id, c.phone_number FROM customers c 
 JOIN orders o ON c.id = o.customer_id 
 WHERE o.product_id = 4;
 
 
 SELECT * FROM products;
 SELECT * FROM customers;
 
 SELECT p.name, o.order_time FROM products p 
 JOIN orders o ON p.id = o.product_id
 WHERE p.name = 'Filter'
 AND o.order_time BETWEEN '2017-01-15' AND '2017-02-14';
 
SELECT p.name, p.price, c.gender, o.order_time FROM products p 
JOIN orders o ON p.id = o.product_id 
JOIN customers c ON c.id = o.customer_id
WHERE c.gender = 'F'
AND o.order_time BETWEEN '2017-01-01' AND '2017-01-31'
ORDER BY o.order_time;


 
 
 
 
 
 
 
 
 