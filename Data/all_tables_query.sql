-- Query for cardholder 2 and 18 transaction data
SELECT t.transaction_date, t.amount, ch.id as card_holder_id
FROM transaction as t
JOIN credit_card as cc ON t.card_number = cc.card_number
JOIN card_holder as ch ON cc.card_holder_id = ch.id
WHERE ch.id IN (2, 18)
ORDER BY t.transaction_date;

-- Query for cardholder 25 transaction data
SELECT t.transaction_date, t.amount
FROM transaction as t
JOIN credit_card as cc ON t.card_number = cc.card_number
JOIN card_holder as ch ON cc.card_holder_id = ch.id
WHERE ch.id = 25 AND t.transaction_date BETWEEN '2018-01-01' AND '2018-06-30'
ORDER BY t.transaction_date;

-- Query for transaction data of a given cardholder
SELECT t.transaction_date, t.amount, ch.id as card_holder_id
FROM transaction as t
JOIN credit_card as cc ON t.card_number = cc.card_number
JOIN card_holder as ch ON cc.card_holder_id = ch.id
WHERE ch.id = ?
ORDER BY t.transaction_date;