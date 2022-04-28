SHOW TABLES;
SELECT *FROM people;

-- 1. add a primary key to the id fields in the pets and people tables
ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD PRIMARY KEY (id);

-- 2. Add a foreign key to the owner_id fields in the pets table refrencing
-- the id field in the people table
ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwner  
FOREIGN KEY (owner_id) REFERENCES people (id);

DESCRIBE people;
describe PETS;

-- 3. Add a column named email to the people table
ALTER TABLE people
ADD COLUMN email VARCHAR(30);


-- 4. Add a unique constraint to the email column in the people table
ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

-- 5. Rename the name column in the pets table to 'first_name'.
ALTER TABLE pets CHANGE `name` `first_name` VARCHAR(20);

DESCRIBE ADDRESSES;
DESCRIBE pets;
-- 6. Chamge the psotcode data type to CHAR(7) in the addresses table
ALTER TABLE addresses MODIFY post_code CHAR(7);

ALTER TABLE addresses CHANGE `post_code` `postcode` CHAR(7);


