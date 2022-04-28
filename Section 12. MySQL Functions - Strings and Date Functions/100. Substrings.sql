USE cinema_booking_system;

-- SUBSTRING

SELECT SUBSTRING("Example",3,3) AS Sub;
SELECT SUBSTRING("Example",3) AS Sub;
--		SUBSTRING(string,start,length)
-- The string and the starting index are required, but the length is optional


SELECT name FROM films; 
SELECT SUBSTRING(name,1,3) AS short_name FROM films;
SELECT SUBSTRING(name,5,4) AS short_name FROM films;
SELECT SUBSTRING(name,-2,2) AS short_name FROM films;
SELECT SUBSTRING(name,-6,5) AS short_name FROM films;



