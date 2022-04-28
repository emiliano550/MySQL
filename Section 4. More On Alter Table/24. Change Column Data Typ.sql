USE test;

-- HOW TO CHANGE A COLUMNS DATA TYPE

ALTER TABLE <tablename> MODIFY <columnname> <data type;

DESCRIBE addresses;
ALTER TABLE addresses MODIFY city VARCHAR(20);
ALTER TABLE addresses MODIFY city VARCHAR(15);
ALTER TABLE addresses MODIFY city INT;

