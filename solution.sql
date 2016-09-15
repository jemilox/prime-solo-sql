
--all users from Chicago
SELECT (username) FROM syntax_practice WHERE city = 'chicago';

--all users with usernames that contain the letter a
SELECT (username) FROM syntax_practice WHERE username LIKE '%a%';

--updata all records with account balance of 0.00 and transactions at 0. Balance to 100.00
UPDATE syntax_practice set account_balance=10.00 WHERE account_balance=0 AND transactions_completed=0;

--Select all users that have attempted 9 or more transactions
SELECT (username) FROM syntax_practice WHERE transactions_completed >= 9;

--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest
SELECT (username) FROM syntax_practice ORDER BY account_balance  DESC LIMIT 3;

--Get the username and account balace of the 3 users with the lowest balances, sort lowest to highest
SELECT (username) FROM syntax_practice ORDER BY account_balance LIMIT 3;

--Get all users with account balances that are more than $100
SELECT (username) FROM syntax_practice WHERE account_balance > 100;

--Add a new record
INSERT INTO syntax_practice VALUES ('meow', 'Minneapolis', 4, 10, 500.00);

--Delete users that reside in miami or pheonix and have completed fewer than 5 transactions
DELETE FROM syntax_practice WHERE city = 'miami' OR city = 'phoenix' AND transactions_completed < 5;
