CREATE DATABASE weather_stations; 
USE weather_stations;

CREATE TABLE station
(ID INT,
CITY varchar(25),
STATE VARCHAR(25),
LAT_N INT,
LONG_W INT 
);
SELECT * FROM station;

CREATE TABLE statistics (
ID INT,
MONTH VARCHAR(15),
TEMP_F DECIMAL(10,2),
RAIN_F DECIMAL(10,2)
);
select * from statistics;

DESCRIBE station_table;

DROP TABLE station_table;


