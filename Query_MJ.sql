DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

CREATE TABLE merchant_category (
	id INT NOT NULL PRIMARY KEY,
	name character varying(45) NOT NULL
);
CREATE TABLE merchant (
  id INT NOT NULL PRIMARY KEY,
  name character varying(45) NOT NULL,
  id_merchant_category integer NOT NULL,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
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

DROP VIEW IF EXISTS TransactionsperCardHolderID CASCADE;

-- Create a View to isolate (or group) the transactions of each cardholder
CREATE VIEW TransactionsperCardHolderID AS 
SELECT ch.card_holder_name, cc.card, tr.amount, tr.date, m.id_merchant, m.merchant_name, m.id_merchant_category, mc.merchant_category_name  
FROM transaction AS tr, credit_card AS cc, card_holder AS ch, merchant as m, merchant_category as mc
WHERE tr.card = cc.card AND 
tr.id_merchant=m.id_merchant AND
cc.card_holder_id = ch.id_card_holder AND 
m.id_merchant_category = mc.merchant_category_id
GROUP BY tr.transaction_id, cc.card, ch.id_card_holder, m.id_merchant, mc.merchant_category_name
ORDER BY ch.id_card_holder; 

DROP VIEW IF EXISTS LessThan2DollarTransactionsPerCardHolderID CASCADE;

-- Create a view for Transaction_Master - Below 2$ per Card Holder --
CREATE VIEW LessThan2DollarTransactionsPerCardHolderID AS
SELECT card_holder_name, card, SUM(amount), COUNT(*) AS transaction_count 
FROM TransactionsperCardHolderID
WHERE amount < 2
GROUP BY card_holder_name, card
ORDER BY SUM(amount) DESC, card_holder_name;

-- Question 2

DROP VIEW IF EXISTS transaction_7to9 CASCADE;

-- Create a view for Transaction_Master between 7-9am
CREATE VIEW transaction_7to9 AS
SELECT 
card_holder_name, merchant_name, card, date, merchant_category_name, amount
FROM TransactionsperCardHolderID
WHERE 
CAST(date AS TIME) > '07:00:00' AND
CAST(date AS TIME) < '09:00:00'
GROUP BY  card_holder_name, merchant_name, card, date,
merchant_name, merchant_category_name, amount
ORDER BY merchant_category_name;

DROP VIEW IF EXISTS top100 CASCADE;

--Query view for top 100 transactions
CREATE VIEW top100 AS
SELECT * FROM transaction_7to9 LIMIT 100;

DROP VIEW IF EXISTS LessThan2_7to9 CASCADE;

-- Create a view for count of transactions of less than $2.00 between 7 am and 9am
CREATE VIEW LessThan2_7to9 AS
SELECT 
card_holder_name, merchant_name, card, date, merchant_category_name, amount
FROM TransactionsperCardHolderID
WHERE 
CAST(date AS TIME) > '07:00:00' AND
CAST(date AS TIME) < '09:00:00' AND
amount < 2.00
GROUP BY card_holder_name, card, merchant_name, merchant_category_name, amount, date
ORDER BY amount DESC;

-- Query view LessThan2_7to9 
SELECT * FROM LessThan2_7to9;

DROP VIEW IF EXISTS merchant_small_transaction CASCADE;

-- Query view merchant_small_transaction 
CREATE VIEW merchant_small_transaction AS
SELECT 
b.merchant_name,
e.merchant_category_name,
d.card_holder_name, 
a.card, 
COUNT(a.transaction_id) AS transaction_count
FROM transaction AS a, merchant AS b, credit_card AS c, card_holder AS d, merchant_category AS e
WHERE a.amount < 2.00 AND
a.id_merchant = b.id_merchant AND
b.id_merchant_category = e.merchant_category_id AND
a.card = c.card AND
c.card_holder_id = d.id_card_holder
GROUP BY  a.card, b.merchant_name, c.card, d.card_holder_name, e.merchant_category_id
ORDER BY transaction_count DESC;  









