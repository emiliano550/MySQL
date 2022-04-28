use weather_stations;

select*from station;
select*from statistics;

INSERT INTO station (ID, CITY, STATE, LAT_N, LONG_W)
VALUES (13, 'TRICHY', 'TAMILNADU', 33, 112), (44, 'COIMBATORE', 'TAMILNADU', 40, 105), 
(66, 'CHENNAI', 'TAMILNADU', 47, 68), (66, 'PONDICHERRY', 'PONDICHERRY', 32, 57),
(12, 'BANGLORE', 'KARNATAKA', 39, 83);

INSERT INTO statistics (ID, MONTH, TEMP_F, RAIN_F)
VALUES (13, 'January', 57.4, 0.31), (13, 'November', 91.7, 5.15), 
(44, 'January', 27.3, 0.18), (44, 'November', 74.8, 2.11), (44, 'March', 6.7, 3.98),
(66, 'November', 65.8, 3.98), (66, 'March', 79.3, 1.2);






