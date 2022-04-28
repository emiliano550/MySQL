USE cinema_booking_system;

SELECT DATE('2018-06-05');
SELECT DATE('2018-06-05 07:45:32');

SELECT start_time FROM screenings;
SELECT DATE(start_time) FROM screenings;

SELECT*FROM screenings
WHERE DATE(start_time) = '2017-10-03';

SELECT * FROM screenings
WHERE start_time = '2017-10-03';

SELECT * FROM screenings
WHERE (start_time) BETWEEN '2017-10-03' and '2017-10-05';
-- Sin la Funcion DATE regresa data del 3 y 4 de octubre, pero no del 5 de octubre
-- en el horario de inicio esta tomando este valor aqui para ser 2017-10-05- 00-00-00, es decir la media noche
-- asi que cada fecha del dia 5 de octubre es en realidad despues de esta hora, para que no caiga entre estas dios 
-- fechas '2017-10-03' and '2017-10-05'

-- Y si usamos la funcion DATE ahora si devolvera todos los valores

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-03' and '2017-10-05';