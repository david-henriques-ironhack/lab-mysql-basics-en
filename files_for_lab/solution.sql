/* 1 */
SELECT *
FROM bank.client
WHERE district_id = 1
LIMIT 5;

/* 2 */
SELECT client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

/* 3 */
SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

/* 4 */
SELECT DISTINCT status
FROM bank.loan
ORDER BY status  ASC;

/* 5 */
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

/* 6 */
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

/* 7 */
SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

/* 8 */
SELECT DISTINCT k_symbol
FROM bank.order
ORDER BY k_symbol ASC;

/* 9 */
SELECT order_id
FROM bank.order
WHERE account_id = 34
LIMIT 4;

/* 10 */
SELECT account_id
FROM bank.order
WHERE order_id BETWEEN 29540 AND 29560
LIMIT 4;

/* 11 */
SELECT amount
FROM bank.order
WHERE account_to = 30067122;

/* 12 */
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

/* 13 */
SELECT district_id, COUNT(*) AS client_count
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

/* 14 */
SELECT type, COUNT(*) AS card_id
FROM bank.card
GROUP BY type
ORDER BY card_id DESC;

/* 15 */
SElECT account_id, SUM(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

/* 16 */
SELECT date, COUNT(*) payments
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

/* 17 */
SELECT date, duration, COUNT(*) AS loan_id
FROM bank.loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

/* 18 */
SELECT account_id, type, SUM(amount)
FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type 
ORDER BY type ASC















