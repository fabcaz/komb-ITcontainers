
USE kombinventoryservice;

CREATE TABLE kombucha_inventory (
komb_inventory_id VARCHAR(36) NOT NULL,
version BIGINT,
created_date TIMESTAMP,
komb_id VARCHAR(36) NOT NULL,
last_modified_date TIMESTAMP,
qty_on_hand INTEGER,
upc VARCHAR(255),

PRIMARY KEY(komb_inventory_id)
);
