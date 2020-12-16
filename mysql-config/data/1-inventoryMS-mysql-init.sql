
-- service should only be able to perform CRUD operations on records -> create separate admin script?
DROP DATABASE IF EXISTS kombinventoryservice;
DROP USER IF EXISTS 'komb_inventory_service'@'%';

CREATE DATABASE IF NOT EXISTS kombinventoryservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'komb_inventory_service'@'%' IDENTIFIED WITH mysql_native_password BY 'qwerty';

-- ['ALTER ', 'CREATE', 'CREATE ROUTINE', 'CREATE VIEW', 'DELETE', 'EVENT', 'EXECUTE', 'INDEX', 'INSERT', 'REFERENCES', 'SELECT', 'SHOW VIEW', 'UPDATE']
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, REFERENCES ON `kombinventoryservice`.* TO 'komb_inventory_service'@'%';

FLUSH PRIVILEGES;


-- why all those privileges? why create routines, indexes, views, ...? does spring data jpa do some optimizations, it doesn't seem like it would be its responsability.


-- https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.stored-procedures but no mention of routines or views in spring data jpa reference docs
