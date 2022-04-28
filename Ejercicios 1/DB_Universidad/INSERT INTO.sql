USE universidad;
SHOW TABLES;
SELECT * FROM alumnos;
SELECT * FROM datos_alumno;
SELECT * FROM mecatronica;

SELECT * FROM alumnos;
ALTER TABLE alumnos CHANGE `name` `first_name` VARCHAR(20);

INSERT INTO alumnos (first_name, last_name, age, gender, city, country)
VALUES ('Abraham', 'Marquez', 26, 'M', 'CDMX', 'Mexico');

INSERT INTO mecatronica (profesor, salon, cuatrimestre, calificacion_final, edificio)
VALUES ('Avila', '203', 5, 9.5, 'F' );

INSERT INTO datos_alumno (alumno_id, mecatronica_id, carrera, turno, no_cuenta, fecha_ingreso)
VALUES (1, 1, 'Mecatronica', 'Vespertino', '14002261', '2014-09-15' );

SELECT a.first_name, a.last_name, d.carrera, d.no_cuenta FROM alumnos a
JOIN datos_alumno d ON a.id = d.alumno_id;

SELECT a.first_name, a.last_name, a.gender, d.carrera, m.calificacion_final, m.profesor, d.no_cuenta FROM alumnos a 
JOIN datos_alumno d ON a.id = d.alumno_id 
JOIN mecatronica m ON m.id = d.mecatronica_id;





