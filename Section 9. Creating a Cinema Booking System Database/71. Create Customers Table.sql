USE cinema_booking_system;

CREATE TABLE customers (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(45),
last_name VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL UNIQUE
);

SHOW TABLES;
select * from customers;
Describe customers;
select * from bookings;
SELECT * FROM films;
SELECT * FROM RESERVED_sEAT;
SELECT * FROM ROOMS;
SELECT * FROM SCREENINGS;
SELECT * FROM SEATS;
;