SHOW databases;
USE coffee_store;
SELECT * FROM coffee_store;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;

USE cinema_booking_system;
SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM films;
SELECT * FROM reserved_seat;
SELECT * FROM rooms;

USE coffee_Store;
SELECT * FROM customers;
SELECT last_name FROM customers;
SELECT last_name, phone_number FROM customers;
SELECT * FROM products;

SELECT * FROM products
WHERE coffee_origin = 'Colombia';

SELECT * FROM products
WHERE coffee_origin = 'Costa rica';

SELECT * FROM products
WHERE price = 3.00
AND coffee_origin = 'Colombia';

SELECT * FROM products
WHERE price = 3.50
OR coffee_origin = 'Colombia';




/* Using inequality simbols
> -
>=
<
<=
*/

SELECT * FROM products
WHERE price >= 3.00;

SELECT * FROM products
WHERE price > 3.00;

SELECT * FROM products
WHERE price <3.00;

SELECT * FROM products
WHERE price <= 3.00;

SELECT * FROM customers;
SELECT * FROM customers
WHERE phone_number IS NULL;

SELECT * FROM customers
WHERE phone_number IS NOT NULL;

SELECT first_name, last_name, phone_number  FROM customers
WHERE gender = 'F'
AND last_name = 'Bluth';


SELECT name, price, coffee_origin FROM products
WHERE price > 3.00
OR coffee_origin = 'Sri Lanka';

SELECT *FROM customers
WHERE gender = 'M'
AND phone_number IS NULL;



/* 39. In, Not In */
SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name IN('Taylor', 'Bluth', 'Armstrong');

SELECT * FROM customers
WHERE first_name NOT IN ('kATIE','John','George');

SELECT * FROM customers
WHERE first_name IN('cHRIS','Harry');

SELECT * FROM customers
WHERE gender NOT IN('F');

select * from customers
WHERE gender = 'M';


/* 40. Between */
SELECT * FROM orders;

SELECT product_id, customer_id, order_time FROM orders
WHERE order_time BETWEEN '2017-01-01' AND '2017-01-07';

SELECT product_id, customer_id, order_time FROM orders
WHERE customer_id BETWEEN '5' AND '10';

SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMERS
WHERE last_name BETWEEN 'A' AND 'L';

SELECT * FROM CUSTOMERS
WHERE id IN(1,2,3,4,5);

SELECT * FROM CUSTOMERS
WHERE id BETWEEN '1' AND '6';

select * from customers 
WHERE first_name BETWEEN 'A' AND 'K';


/* 41. LIKE */
SELECT * FROM customers;


/*  Cuando termina con % significa que hara el query donde la columna de last_name empiecen con lo que le especifiquemos antes del%*/
SELECT * FROM customers
WHERE LAST_NAME LIKE 'B%';

select * from customers
WHERE LAST_NAME LIKE 'E%';

SELECT * FROM CUSTOMERS
WHERE last_name LIKE 'S%';

SELECT * FROM CUSTOMERS
WHERE last_name LIKE 'W%';

/* Con % al principio y % al final, seleccionara de la columna cualquier caracter qeu contenga en medio de los asteriscos */
SELECT * FROM CUSTOMERS
WHERE last_name LIKE '%y%';

SELECT * FROM CUSTOMERS
WHERE last_name LIKE '%Y%';

/* CON _caracter__     ------> con guión bajo al principio, caracter en medio y guión bajo al final nose regresa un el query con UN SOLO CARACTER  */
SELECT * FROM CUSTOMERS 
WHERE first_name LIKE'_O_';

SELECT * FROM products
WHERE price LIKE '3%';

select * from products
WHERE price LIKE '%2%';

select * from products
WHERE price BETWEEN '2.50' AND '3.00';

SELECT * FROM CUSTOMERS
ORDER BY last_name;



/*   42. ORDER BY */
SELECT * FROM products;
select * from customers;

SELECT * FROM PRODUCTS
ORDER BY price ASC;

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM customers
ORDER BY last_name ASC;

SELECT * FROM customers
ORDER BY last_name DESC;

SELECT * FROM customers
ORDER BY first_name ASC;

select * from customers
ORDER BY first_name DESC;

SELECT * FROM customers
ORDER BY id DESC;

SELECT * FROM orders
WHERE customer_id =1
ORDER BY order_time ASC;

SELECT * FROM orders
WHERE customer_id = 1
ORDER BY order_time DESC;

/* 43. Excercise */
SELECT * FROM products;

SELECT name, price, coffee_origin FROM products
WHERE coffee_origin = 'Colombia' 
OR  coffee_origin ='Indonesia'
ORDER BY name ASC;

SELECT name, price, coffee_origin FROM products
WHERE coffee_origin IN('Colombia','Indonesia')
ORDER BY name;


SELECT * FROM ORDERS;

SELECT * FROM orders
WHERE customer_id IN( 2,4,6,8)
AND order_time BETWEEN '2017-02-01' and '2017-02-28';



SELECT * FROM customers;

SELECT first_name, last_name, phone_number FROM customers
WHERE last_name LIKE '%ar%';


/* 45. DISTINCT */ 
SELECT coffee_origin FROM products;

SELECT DISTINCT coffee_origin FROM products;

SELECT customer_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';

SELECT DISTINCT customer_id, PRODUCT_ID FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';


/* 46. LIMIT */
SELECT * FROM customers
LIMIT 5;

SELECT * FROM customers
LIMIT 5 OFFSET 5;

SELECT * FROM customers
LIMIT 10 OFFSET 5;

SELECT * FROM customers
ORDER BY last_name 
LIMIT 10;

SELECT * FROM customers
ORDER BY first_name
LIMIT 11;

select * from products
ORDER BY price 
LIMIT 3;


/* 47. COLUMN NAME ALIAS */
select * from products;

SELECT name AS coffee, price, coffee_origin AS Country FROM products;

SELECT * FROM customers;

SELECT first_name AS Nombre, last_name AS Apellido, phone_number AS Celular FROM customers;
SELECT name AS Cafe, price AS Precio, coffee_origin AS Pais_de_Origen FROM products;

SELECT * FROM orders;
SELECT product_id AS ID_producto, customer_id AS ID_Cliente, order_time AS Fecha_de_orden_año_mes_dia FROM orders;



/*  48. Excercise     */

SELECT * FROM CUSTOMERS;

select DISTINCT last_name, first_name FROM customers
ORDER BY last_name;

SELECT * FROM orders;
SELECT * FROM ORDERS
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id = 1
LIMIT 3;

SELECT * FROM products;
SELECT name, price AS retail_price, coffee_origin FROM products;





















































































