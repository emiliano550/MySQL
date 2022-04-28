USE test;
ALTER TABLE <tablename> CHANGE`old_cloumn_name` `new_column_name` <data type>;

SELECT*FROM people;
ALTER TABLE people CHANGE `addresses_id` `address_id` VARCHAR(30);


SELECT*FROM pets;
ALTER TABLE pets CHANGE `species` `animal_type` VARCHAR(30);
ALTER TABLE pets CHANGE `animal_type` `species` VARCHAR(30);

