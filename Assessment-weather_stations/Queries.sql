USE weather_stations;
-- Use the above tables to formulate SQL queries for the following:
-- 1. Query to show MAX and MIN temperatures as well as average rainfall for each station.
SELECT * FROM statistics;


SELECT month, MAX(TEMP_F), MIN(TEMP_F), AVG(TEMP_F), rain_f FROM statistics
GROUP BY TEMP_F
ORDER BY MONTH DESC;


-- 2. Display the location where the LONG_W is from 70 to 100.
select*from station;

SELECT * FROM station
WHERE LONG_W BETWEEN '70' AND '100';

-- 3. Query (with subquery) to show stations with year-round average temperature above 50 degrees.

SELECT * FROM statistics
WHERE TEMP_F IN 
(SELECT TEMP_F FROM statistics
WHERE TEMP_F > 50)
ORDER BY TEMP_F DESC;

-- OR 

SELECT MONTH, TEMP_F FROM statistics
WHERE TEMP_F > 50
ORDER BY TEMP_F DESC;


-- 4. Find the Average temperature in November.
SELECT * FROM statistics; 

SELECT MONTH, AVG(TEMP_F) AS Average_temperature from statistics
WHERE MONTH = 'November';


-- 5. Find the total amount of rainfall in the month of March.
SELECT * FROM statistics;

SELECT MONTH, SUM(RAIN_F) AS Total_amount_rainfall FROM STATISTICS
WHERE MONTH = 'March';


-- 6. Display ID, LAT_N and LONG_N for the CITY with starting letter 'C'.
SELECT * FROM station;

SELECT ID, CITY, LAT_N, LONG_W FROM station
WHERE CITY LIKE 'C%';


-- 7. Query to select only ID, CITY, and STATE columns in descending order based on LAT_N and LONG_W.

SELECT ID, CITY, STATE, LAT_N, LONG_W FROM STATION
GROUP BY LAT_N
ORDER BY LAT_N DESC;


-- 8. Update all rows of table STATISTICS to compensate for faulty rain gauges known to read 0.01 inches low.
select * from statistics;
UPDATE STATISTICS
SET RAIN_F = 2
WHERE ID = 13; 

UPDATE STATISTICS
SET RAIN_F = 5.15
WHERE TEMP_F = 91.7;

UPDATE STATISTICS
SET RAIN_F = 2
WHERE TEMP_F = 27.3;

------------------
DESCRIBE STATISTICS;
ALTER TABLE STATISTICS 
CHANGE `RAIN_F` `RAIN_I` DECIMAL(10, 2);


-- 9. Update one row, Chennai January temperature reading, to correct a data entry error and take
--  a look and make the above changes permanent.

-- 10. Query to look at table STATISTICS, picking up location information by joining with table STATION on the ID column.
SELECT STATISTICS.ID, STATISTICS.MONTH, STATISTICS.TEMP_F, STATISTICS.RAIN_I FROM STATISTICS
INNER JOIN STATION ON; 


ALTER TABLE STATISTICS 
ADD PRIMARY KEY(ID);


-- 11. Add a new column named PINCODE to the table STATION with data type of number and length 5.
ALTER TABLE STATION 
ADD COLUMN PINCODE VARCHAR(5);

SELECT * FROM STATION;
DESCRIBE STATION;


-- 12. Fetch the STATE which starts with letter T and ends with U .
SELECT STATE FROM STATION
WHERE STATE LIKE 'T%U';


-- 13. Permanently delete the STATION table and look for the result.

DROP TABLE STATION;


