USE coffee_store;
SHOW Tables;
SELECT*FROM products;

-- INSERTING DATA INTO TABLES
INSERT INTO <table_name> (<column1>, <column2>, <column3>)
VALUES ('value1', 'value2', 'value3');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Espresso', 2.50, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Macchiato', 3.00, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Cappuccino', 3.50, 'Costa Rica');

INSERT INTO products (name, price, coffee_origin)
VALUES ('LATE', 3.50, 'Indonesia');

INSERT INTO products (name, price, coffee_origin)
VALUES ('AMERICANO', 3.00, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('FLAT WHITE', 3.50, 'INDONESIA');

INSERT INTO products (name, price, coffee_origin)
VALUES ('FILTER', 3.00, 'INDIA');

