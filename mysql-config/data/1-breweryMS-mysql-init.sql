
DROP DATABASE IF EXISTS kombbrewservice;
DROP USER IF EXISTS 'komb_brew_service'@'%';

CREATE DATABASE IF NOT EXISTS kombbrewservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'komb_brew_service'@'%' IDENTIFIED WITH mysql_native_password BY 'qwerty';

-- GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, REFERENCES ON `kombbrewservice`.* TO 'komb_brew_service'@'%';
GRANT ALL ON `kombbrewservice`.* TO 'komb_brew_service'@'%';
FLUSH PRIVILEGES;
