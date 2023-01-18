DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

CREATE TABLE merchant (
  id INT NOT NULL PRIMARY KEY,
  name character varying(45) NOT NULL,
  id_merchant_category integer NOT NULL,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);

CREATE TABLE merchant_category (
	id INT NOT NULL PRIMARY KEY,
	name character varying(45) NOT NULL
);

CREATE TABLE card_holder (
	id INT NOT NULL PRIMARY KEY,
	name character varying(45) NOT NULL
);

CREATE TABLE credit_card (
	card VARCHAR(20) NOT NULL PRIMARY KEY,
	card_holder_id INT NOT NULL,
	FOREIGN KEY (card_holder_id) REFERENCES card_holder(id)
);	
CREATE TABLE transaction (
	id INT NOT NULL PRIMARY KEY,
	date TIMESTAMP NOT NULL,
	amount float,
	card VARCHAR(20),
	FOREIGN KEY (card) REFERENCES credit_card(card),
	id_merchant INT,
	FOREIGN KEY (id_merchant) REFERENCES merchant(id)
);

ALTER TABLE merchant RENAME COLUMN id TO id_merchant;
ALTER TABLE merchant RENAME COLUMN name TO merchant_name;
ALTER TABLE merchant_category RENAME COLUMN id TO merchant_category_id;
ALTER TABLE merchant_category RENAME COLUMN name TO merchant_category_name;
ALTER TABLE card_holder RENAME COLUMN id TO id_card_holder;
ALTER TABLE card_holder RENAME COLUMN name TO card_holder_name;
ALTER TABLE transaction RENAME COLUMN id TO transaction_id;

SELECT * FROM card_holder;
SELECT * FROM credit_card;
SELECT * FROM merchant;
SELECT * FROM merchant_category;
SELECT * FROM transaction;