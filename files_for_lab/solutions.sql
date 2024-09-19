/*To review entries in the client set*/
SELECT *
FROM bank.client;

/* to Get the id values of the first 5 clients from district_id with a value equals to 1*/
SELECT
client_id
FROM bank.client
WHERE district_id=1
LIMIT 5;

/* To get an id value of the last client where the district_id equals to 72.*/
SELECT
client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


/* To get Get the 3 lowest amounts in the loan table.*/

/*First review entries in the loan data set*/
SELECT *
FROM bank.loan;

/* Get the 3 lowest amounts in the loan table.*/
SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

/* Get the possible values for status, ordered alphabetically in ascending order in the loan table.*/
SELECT DISTINCT status
FROM bank.loan
ORDER BY status ASC;

/* Get the loan_id of the highest payment received in the loan table.*/
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

/* Get the loan amount of the lowest 5 account_ids in the loan table, Show the account_id and the corresponding amount.*/
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

/* Get the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?.*/
SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;


/* Get the unique values of k_symbol in the order table?.*/
SELECT DISTINCT k_symbol
FROM bank.order
WHERE K_symbol IS NOT NULL AND K_symbol != ""
ORDER BY k_symbol ASC;


/* The order_ids of the client with the account_id 34*/
SELECT order_id
FROM bank.order
WHERE account_id = 34;

/* The account_ids responsible for orders between order_id 29540 and order_id 29560 (inclusive)?*/
SELECT DISTINCT account_id
FROM bank.order
WHERE order_id > 29540 AND order_id <= 29560;

/* The individual amounts that were sent to (account_to) id 30067122?*/
SELECT amount
FROM bank.order
WHERE account_to = 30067122;

/* The trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.*/
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

/* In the district_id lower than 10, the number of clients that are from each district_id, results sorted by the district_id in ascending order.*/
SELECT district_id, COUNT(*) AS client_count
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

/* In the card table, number of cards that exist for each type? result ranked starting with the most frequent type.*/
SELECT type, COUNT(*) AS card_type
FROM bank.card
GROUP BY type
ORDER BY card_type DESC;


/* In the card table, number of cards that exist for each type? result ranked starting with the most frequent type.*/
SELECT type, COUNT(*) AS card_type
FROM bank.card
GROUP BY type
ORDER BY card_type DESC;

/* In the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.*/
SELECT account_id, sum(amount) as amount_ranking
FROM bank.loan
GROUP BY account_id
ORDER BY amount_ranking DESC
LIMIT 10;


/* In the loan table, the number of loans issued for each day, before (excl) 930907, ordered by date in descending order..*/
SELECT date, count(*) as number_loan
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;


SELECT *
FROM bank.loan


/* In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, 
ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.*/
SELECT date, duration, COUNT(*) AS number_of_loans
FROM bank.loan
WHERE date >= '1997-12-01' AND date < '1998-01-01'
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

/* sum the amount of transactions for each type for a specific account_id (in this case, 396) from the trans table*/
SELECT account_id, type, SUM(amount) AS total_amount
FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY 
type ASC;
