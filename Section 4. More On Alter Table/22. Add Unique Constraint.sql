USE test;

-- HOW TO ADD A UNIQUE CONSTRAINT TO A COLUMN
-- Agregar una restricción a una columna, osea que el dato que metamos en una fila, 
-- no se puede repetir en esa columna, porque es una restricción.alter

ALTER TABLE <tablename>
ADD CONSTRAINT <constraintname> UNIQUE (<columnname>);

-- HOW TO REMOVE A UNIQUE CONSTRAINT FROM A COLUMN 

ALTER TABLE <tablename>
DROP INDEX <constraintname>;

SELECT*FROM pets;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;
