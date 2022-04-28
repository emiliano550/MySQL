USE test;

-- HOW TO ADD A FOREIGN KEY TO A TABLE

ALTER TABLE<tablename>
ADD CONSTRAINT<constraintname>
FOREIGN KEY (<columnname>) REFERENCE<tablename>(<columname>);


-- HOW TO REMOVE A FOREIGN KEY FROM A TABLE

ALTER TABLE <tablename>
DROP FOREIGN KEY<constraintname>;

DESCRIBE addresses;
DESCRIBE people;

ALTER TABLE people 
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY(address_id) REFERENCES addresses(id);

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;

