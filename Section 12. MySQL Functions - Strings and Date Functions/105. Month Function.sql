USE cinema_booking_system;

-- With the function MONTH it just returns the month selected
SELECT MONTH('2018-06-05');
SELECT MONTH('2018-06-05 07:45:32');


-- We can add AS to call de column with a new name
SELECT start_time FROM screenings;
SELECT MONTH(start_time) AS month FROM screenings;
SELECT MONTH(start_time) FROM screenings;

-- We can use it, when we want to select a spcific month of year in our DB
SELECT * FROM screenings
WHERE MONTH(start_time) = '10';

