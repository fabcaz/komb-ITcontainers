USE kombbrewservice;


CREATE TABLE kombucha (

id VARCHAR(36) NOT NULL,
komb_name VARCHAR(255),
komb_style VARCHAR(255),
created_date TIMESTAMP,
last_modified_date TIMESTAMP,
min_on_hand INTEGER,
price DECIMAL(19, 2),
qty_to_brew INTEGER,
upc VARCHAR(255),
version BIGINT,

PRIMARY KEY(id),
UNIQUE INDEX idx_upc  (upc)
);
