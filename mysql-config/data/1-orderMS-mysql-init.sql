
DROP DATABASE IF EXISTS komborderservice;
DROP USER IF EXISTS 'komb_order_service'@'%';

CREATE DATABASE IF NOT EXISTS komborderservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'komb_order_service'@'%' IDENTIFIED WITH mysql_native_password BY 'qwerty';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, REFERENCES ON `komborderservice`.* TO 'komb_order_service'@'%';

FLUSH PRIVILEGES;
