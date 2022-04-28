show databases;
SHOW TABLES;

CREATE DATABASE cinema_booking_system;
USE cinema_booking_system;

CREATE TABLE films (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL UNIQUE,
length_min INT NOT NULL
);
SELeCT*FROM FILMS;
DESCRIBE FILMS;
