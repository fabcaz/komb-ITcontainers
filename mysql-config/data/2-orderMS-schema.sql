
USE komborderservice;


CREATE TABLE customer (

id VARCHAR(36) NOT NULL,
created_date TIMESTAMP,
last_modified_date TIMESTAMP,
version BIGINT,
api_key  VARCHAR(36),
customer_name  VARCHAR(255),

PRIMARY KEY(id)
);

CREATE TABLE kombucha_order (

id VARCHAR(36) NOT NULL,
created_date TIMESTAMP,
last_modified_date TIMESTAMP,
version BIGINT,
customer_ref VARCHAR(255),
order_status VARCHAR(255),
order_status_callback_url VARCHAR(255),
customer_id VARCHAR(36),

PRIMARY KEY(id),
FOREIGN KEY (customer_id) REFERENCES customer (id)

);

CREATE TABLE kombucha_order_line (

id VARCHAR(36) NOT NULL,
created_date TIMESTAMP,
last_modified_date TIMESTAMP,
version BIGINT,
komb_id VARCHAR(36),
order_quantity INTEGER,
quantity_allocated INTEGER,
upc VARCHAR(255),
kombucha_order_id VARCHAR(36),

PRIMARY KEY(id),
FOREIGN KEY(kombucha_order_id) REFERENCES kombucha_order (id)
ON UPDATE CASCADE ON DELETE CASCADE

);






























