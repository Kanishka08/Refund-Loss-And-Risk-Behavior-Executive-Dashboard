create database fraud_detection_db;

use fraud_detection_db;

select count(*) from transactions_data;

CREATE TABLE users_data (
    client_id INT PRIMARY KEY,
    current_age INT,
    retirement_age INT,
    birth_year INT,
    birth_month INT,
    gender VARCHAR(10),
    address VARCHAR(100),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    per_capita_income DECIMAL(12,2),
    yearly_income DECIMAL(12,2),
    total_debt DECIMAL(12,2),
    credit_score INT,
    num_credit_cards INT
);


CREATE TABLE cards_data (
    card_id INT PRIMARY KEY,
    client_id INT,
    card_brand VARCHAR(20),
    card_type VARCHAR(30),
    card_number VARCHAR(20),
    expires VARCHAR(10),
    cvv INT,
    has_chip VARCHAR(5),
    num_cards_issued INT,
    credit_limit DECIMAL(12,2),
    acct_open_date VARCHAR(20),
    year_pin_last_changed INT,
    card_on_dark_web VARCHAR(5),
    FOREIGN KEY (client_id) REFERENCES users_data(client_id)
);


CREATE TABLE transactions_data (
    txn_id BIGINT PRIMARY KEY,
    txn_date DATETIME,
    client_id INT,
    card_id INT,
    amount DECIMAL(12,2),
    use_chip VARCHAR(30),
    merchant_id INT,
    merchant_city VARCHAR(100),
    merchant_state VARCHAR(50),
    merchant_zip INT,
    mcc INT,
    errors VARCHAR(100),
    FOREIGN KEY (client_id) REFERENCES users_data(client_id),
    FOREIGN KEY (card_id) REFERENCES cards_data(card_id)
);

select count(*) from transactions_data;
select * from users_data;

CREATE INDEX idx_card_id ON transactions_data(card_id);
CREATE INDEX idx_client_id_txn ON transactions_data(client_id);
CREATE INDEX idx_client_id_cards ON cards_data(client_id);

describe users_data;

CREATE TABLE master_transaction_sample AS
SELECT 
    t.txn_id,
    t.txn_date,
    t.amount,
    t.use_chip,
    t.errors,
    t.merchant_id,
    t.merchant_city,
    t.merchant_state,
    t.merchant_zip,
    t.mcc,

    c.card_id,
    c.card_brand,
    c.card_type,
    c.card_on_dark_web,
    c.has_chip,
    c.num_cards_issued,
    c.credit_limit,

    u.client_id,
    u.gender,
    u.current_age,
    u.yearly_income,
    u.total_debt,
    u.credit_score,
    u.num_credit_cards
FROM transactions_data t
JOIN cards_data c ON t.card_id = c.card_id
JOIN users_data u ON t.client_id = u.client_id
LIMIT 0;

SELECT count(*) FROM master_transaction_sample;

INSERT INTO master_transaction_sample
SELECT 
    t.txn_id,
    t.txn_date,
    t.amount,
    t.use_chip,
    t.errors,
    t.merchant_id,
    t.merchant_city,
    t.merchant_state,
    t.merchant_zip,
    t.mcc,

    c.card_id,
    c.card_brand,
    c.card_type,
    c.card_on_dark_web,
    c.has_chip,
    c.num_cards_issued,
    c.credit_limit,

    u.client_id,
    u.gender,
    u.current_age,
    u.yearly_income,
    u.total_debt,
    u.credit_score,
    u.num_credit_cards
FROM transactions_data t
JOIN cards_data c ON t.card_id = c.card_id
JOIN users_data u ON t.client_id = u.client_id
LIMIT 50000 OFFSET 1000000;






SELECT COUNT(*) FROM master_transaction_sample;

SELECT txn_id, COUNT(*) AS count
FROM master_transaction_sample
GROUP BY txn_id
HAVING count > 1;

WITH duplicates AS (
  SELECT 
    txn_id,
    ROW_NUMBER() OVER (PARTITION BY txn_id ORDER BY txn_id) AS rn
  FROM master_transaction_sample
)
DELETE FROM master_transaction_sample
WHERE txn_id IN (
  SELECT txn_id
  FROM duplicates
  WHERE rn > 1
);

set SQL_SAFE_UPDATES = 0;

-- Should return zero
SELECT txn_id
FROM master_transaction_sample
GROUP BY txn_id
HAVING COUNT(*) > 1;


SELECT COUNT(*) FROM master_transaction_sample;
-- Should return: 1,048,575

SELECT txn_id, COUNT(*) AS count
FROM transactions_data
GROUP BY txn_id
HAVING COUNT(*) > 1;

SELECT card_id, COUNT(*) AS count
FROM cards_data
GROUP BY card_id
HAVING COUNT(*) > 1;

SELECT client_id, COUNT(*) AS count
FROM users_data
GROUP BY client_id
HAVING COUNT(*) > 1;

SELECT *, COUNT(*) AS count
FROM users_data
GROUP BY
  current_age, retirement_age, birth_year, birth_month, gender,
  address, latitude, longitude, per_capita_income, yearly_income,
  total_debt, credit_score, num_credit_cards
HAVING COUNT(*) > 1;
