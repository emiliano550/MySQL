USE cinema_booking_system;
-- The Function YEAR just return the YEAR selected
-- We can add AS to call de column with a new name
SELECT YEAR('2018-06-05');
SELECT YEAR('2018-06-05 07:42:45');
SELECT YEAR('2018-06-05 07:42:45') AS year;

SELECT start_time FROM screenings;
SELECT YEAR(start_time) FROM screenings;
SELECT YEAR(start_time) AS year FROM screenings;

-- This is how we can return data from certain years in our database
SELECT * FROM screenings
WHERE YEAR(start_time) = '2017';
