select * from bank.client;
/*Query 1*/
SELECT client_id
FROM bank.client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

/*Query 2*/
select client_id
from bank.client
WHERE district_id = 72
ORDER BY client_id desc
limit 1;

/*Query 3*/
select amount
from bank.loan
order by amount asc
limit 3;

/*Query 4*/
SELECT DISTINCT status
from bank.loan
order by status asc;

/*Query 5*/
select loan_id
from bank.loan
order by payments desc
limit 1;

/*Query 6*/
select account_id, amount
from bank.loan
order by account_id, amount desc
limit 5;

/*Query 7*/
select account_id,amount
from bank.loan
where duration = 60
order by amount asc
limit 5;

/*Query 8*/
select distinct k_symbol
from bank.order
order by k_symbol asc;

/*Query 9*/
select order_id, account_id
from bank.order
where account_id = 34
order by order_id asc;

/*Query 10*/
select distinct account_id
from bank.order
where order_id between 29540 and 29560;

/*Query 11*/
select distinct amount
from bank.order
where account_to = 30067122
order by amount;

/*Query 12*/
select trans_id,date,type,amount
from bank.trans
where account_id = 793
order by date desc
limit 10;

/*Query 13*/
select district_id, COUNT(*) AS client_count
from bank.client
where district_id <10
GROUP BY district_id
order by district_id asc;

/*Query 14*/
select type, COUNT(*) AS card_count
from bank.card
GROUP BY type
ORDER BY card_count DESC;

/*Query 15*/
SELECT account_id, SUM(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

/*Query 16*/
SELECT date, COUNT(*) AS loan_count
FROM bank.loan
WHERE date < '930907'
GROUP BY date
ORDER BY date DESC;

/*Query 17*/
SELECT date, duration, COUNT(*) AS loan_id
FROM bank.loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

/*Query 18*/
SELECT account_id, type, SUM(amount) AS total_amount
FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type;











