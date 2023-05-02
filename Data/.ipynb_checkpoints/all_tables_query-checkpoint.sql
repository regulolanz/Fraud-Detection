CREATE TABLE card_holder (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE credit_card (
    card_number VARCHAR(20) PRIMARY KEY,
    card_holder_id INT,
    FOREIGN KEY (card_holder_id) REFERENCES card_holder (id)
);

CREATE TABLE merchant_category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE merchant (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES merchant_category (id)
);

CREATE TABLE transaction (
    id SERIAL PRIMARY KEY,
	transaction_date TIMESTAMP NOT NULL,
	amount DECIMAL(10, 2) NOT NULL,
    card_number VARCHAR(20),
    merchant_id INT,
    FOREIGN KEY (card_number) REFERENCES credit_card (card_number),
    FOREIGN KEY (merchant_id) REFERENCES merchant (id)
);