-- 0. Get all the users
SELECT * FROM syntax_practice;
-- 1. Get all users from Chicago.
-- 2. Get all users with usernames that contain the letter a.
-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
-- 4. Select all users that have attempted 9 or more transactions.
-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
-- 7. Get all users with account balances that are more than $100.
-- 8. Add a new record.
-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
CREATE TABLE	users (
	id SERIAL PRIMARY KEY NOT NULL,
	USERNAME VARCHAR(30) UNIQUE,
	active BOOLEAN,
	created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--CREATE -- INSTERT --


INSERT INTO users (username, active) VALUES('millie11', TRUE);
INSERT INTO users (username, active) VALUES('Tony2times2times', TRUE);
INSERT INTO users (username, active) VALUES('meatfarmer', TRUE);


--READ -- SELECT --
SELECT * FROM users;
SELECT * FROM users WHERE active=TRUE;
SELECT * FROM users WHERE active=TRUE;
SELECT * FROM users WHERE username='Tony2times2times';
SELECT * FROM users ORDER BY username DESC;
SELECT * FROM users ORDER BY username ASC;
SELECT * FROM users LIMIT 2;
SELECT * FROM users WHERE username LIKE 'm%';
SELECT count(*) FROM users;
SELECT MAX(id) FROM users;


--UPDATE
UPDATE users SET active=FALSE WHERE username='Tony2times2times';
UPDATE users SET active=TRUE WHERE username='Tony2times2times';


--DELETE
DELETE FROM users WHERE username='meatfarmer';
