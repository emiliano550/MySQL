
-- CONCATENATE: Joining together data from multiple columns and returning it, in one single column.
-- SELECT CONCAT(column1, column2) AS new_column_name FROM table;

USE cinema_booking_system;

SELECT CONCAT(first_name, last_name) FROM customers; 
-- Is not mandatory put AS and new name of column, but with AS is more better

SELECT CONCAT(first_name, last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name, " ", email) AS full_name FROM customers;
SELECT CONCAT("This is ", first_name, " ", last_name, "´s email: ", email) AS customers_email FROM customers;




