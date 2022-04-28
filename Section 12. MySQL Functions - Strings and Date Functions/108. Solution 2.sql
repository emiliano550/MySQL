USE cinema_booking_system;

-- 1. Select the film id and start time from the screenings table for the date of 20th of October 2017.
SELECT * FROM screenings;

SELECT film_id, start_time FROM screenings
WHERE DATE(start_time) = '2017-10-20';


-- 2. Select all the data from the screenings table for the start time between the 6th and 13th of 
-- October 2017.

SELECT*FROM screenings
WHERE DATE(start_time)  BETWEEN '2017-10-06' AND '2017-10-13';


-- 3. Select all the data from the screenings table for October 2017.
-- So if we had data from 2016,2015 etc, or from April, may, then we can only extract the data from OCTOBER
-- 2017 by saying where the MONT start time is equal to 10 and the year start is equal to 2017
SELECT * FROM screenings
WHERE MONTH(start_time) = '10'
AND YEAR(start_time) = '2017';