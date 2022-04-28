USE cinema_booking_system;

-- UUPER AND LOWER CASE

-- SELECT UPPER(column1) AS new_column_name FROM table1;
-- SELECT LOWER(column1) AS new_column_name FROM table1;

-- Is not mandatory put AS and new name of column, but with AS is more better
-- SELECT LOWER(column1)  FROM table1;

SELECT name FROM rooms;

SELECT UPPER(name) FROM rooms;
SELECT UPPER(name) AS name FROM rooms;


SELECT LOWER(name) FROM rooms;
SELECT LOWER(name) AS name FROM rooms;


