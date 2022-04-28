CREATE DATABASE universidad;
USE universidad;


CREATE TABLE alumnos(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (15),
last_name VARCHAR (15), 
age INT,
gender ENUM ('M','F'),
city VARCHAR(30),
country VARCHAR(20)
);

CREATE TABLE mecatronica (
id INT PRIMARY KEY AUTO_INCREMENT,
profesor VARCHAR (30),
salon VARCHAR(10),
cuatrimestre INT,
calificacion_final DECIMAL (3, 2)
);

CREATE TABLE datos_alumno(
id INT PRIMARY KEY AUTO_INCREMENT,
alumno_id INT,
mecatronica_id INT,
carrera VARCHAR (20),
turno VARCHAR (20),
no_cuenta VARCHAR (10),
fecha_ingreso DATE,
FOREIGN KEY (alumno_id)
REFERENCES alumnos(id),
FOREIGN KEY (mecatronica_id)
REFERENCES mecatronica(id)
);

SHOW TABLES;



