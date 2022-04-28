USE coffee_Store;
SELECT*FROM products;

UPDATE <table_name>
SET <column_name> = 'value'
WHERE <column_name> = 'value';

UPDATE products
SET coffee_origin ='Sri Lanka'
WHERE id = 7;

SET SQL_SAFE_UPDATES=0;

UPDATE products
SET name = 'Late'
WHERE id = 4;


UPDATE products
SET price = 3.25, coffee_origin = 'Ethiopia'
WHERE name = 'Americano';

UPDATE products
SET name = 'Americano'
WHERE id= 5;

update products
SET name = 'Flat White', coffee_origin = 'Indonesia'
WHERE id =6;

UPDATE products
SET name = 'Filter'
WHERE id = 7;

UPDATE products
SET coffee_origin = 'Colombia'
WHERE coffee_origin ='Brazil';

