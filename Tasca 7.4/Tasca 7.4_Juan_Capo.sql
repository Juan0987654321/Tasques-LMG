create database IF NOT EXISTS ex4t6;

use ex4t6;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_data JSON
);

CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    txn_data JSON
);

INSERT INTO accounts VALUES 

(1,'{"avail_balance": 1057.75, "close_date": "NULL", "last_activity_date": "2005-01-04", "open_date": "2000-01-15", "pending_balance": 1057.75, "status": "ACTIVE", "cust_id": 1, "open_emp_id": 10, "open_branch_id": "2", "open_branch_name": "Woburn Branch", "open_branch_address": "422 Maple St.", "open_branch_city": "Woburn", "open_branch_state": "MA", "open_branch_zip_code": "01801", "product_cd": "CHK", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "checking account", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}'),

(2,'{"avail_balance": 500, "close_date": "NULL", "last_activity_date": "2004-12-19", "open_date": "2000-01-15", "pending_balance": 500, "status": "ACTIVE", "cust_id": 1, "open_emp_id": 10, "open_branch_id": "2", "open_branch_name": "Woburn Branch", "open_branch_address": "422 Maple St.", "open_branch_city": "Woburn", "open_branch_state": "MA", "open_branch_zip_code": "01801", "product_cd": "SAV", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "savings account", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}'),

(3,'{"avail_balance": 3000, "close_date": "NULL", "last_activity_date": "2004-06-30", "open_date": "2004-06-30", "pending_balance": 3000, "status": "ACTIVE", "cust_id": 1, "open_emp_id": 10, "open_branch_id": "2", "open_branch_name": "Woburn Branch", "open_branch_address": "422 Maple St.", "open_branch_city": "Woburn", "open_branch_state": "MA", "open_branch_zip_code": "01801", "product_cd": "CD", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "certificate of deposit", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}'),

(4,'{"avail_balance": 2258.02, "close_date": "NULL", "last_activity_date": "2004-12-27", "open_date": "2001-03-12", "pending_balance": 2258.02, "status": "ACTIVE", "cust_id": 2, "open_emp_id": 10, "open_branch_id": "2", "open_branch_name": "Woburn Branch", "open_branch_address": "422 Maple St.", "open_branch_city": "Woburn", "open_branch_state": "MA", "open_branch_zip_code": "01801", "product_cd": "CHK", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "checking account", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}'),

(5,'{"avail_balance": 200, "close_date": "NULL", "last_activity_date": "2004-12-11", "open_date": "2001-03-12", "pending_balance": 200, "status": "ACTIVE", "cust_id": 2, "open_emp_id": 10, "open_branch_id": "2", "open_branch_name": "Woburn Branch", "open_branch_address": "422 Maple St.", "open_branch_city": "Woburn", "open_branch_state": "MA", "open_branch_zip_code": "01801", "product_cd": "SAV", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "savings account", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}'),

(7,'{"avail_balance": 1057.75, "close_date": "NULL", "last_activity_date": "2004-11-30", "open_date": "2002-11-23", "pending_balance": 1057.75, "status": "ACTIVE", "cust_id": 3, "open_emp_id": 13, "open_branch_id": "3", "open_branch_name": "Quincy Branch", "open_branch_address": "125 Presidential Way", "open_branch_city": "Quincy", "open_branch_state": "MA", "open_branch_zip_code": "02169", "product_cd": "CHK", "product_date_offered": "2000-01-01", "product_date_retired": "NULL", "product_name": "checking account", "product_type_cd": "ACCOUNT", "product_type_name": "Customer Accounts"}');

INSERT INTO transactions VALUES 

(1,'{ "amount": 100, "funds_avail_date": "2000-01-15 00:00:00", "txn_date": "2000-01-15 00:00:00", "txn_type_cd": "CDT", "account_id": 1, "teller_emp_id": 1, "execution_branch_id": 1, "execution_branch_name": "Headquarters", "execution_branch_address": "3882 Main St.", "execution_branch_city": "Waltham", "execution_branch_state": "MA", "execution_branch_zip_code": "02451"}'),

(2,'{ "amount": 500, "funds_avail_date": "2000-01-15 00:00:00", "txn_date": "2000-01-15 00:00:00", "txn_type_cd": "CDT", "account_id": 2, "teller_emp_id": 2, "execution_branch_id": 1, "execution_branch_name": "Headquarters", "execution_branch_address": "3882 Main St.", "execution_branch_city": "Waltham", "execution_branch_state": "MA", "execution_branch_zip_code": "02451"}'),

(3,'{"amount": 75, "funds_avail_date": "2004-06-30 00:00:00", "txn_date": "2004-06-30 00:00:00", "txn_type_cd": "CDT", "account_id": 3, "teller_emp_id": 2, "execution_branch_id": 2, "execution_branch_name": "Woburn Branch", "execution_branch_address": "422 Maple St.", "execution_branch_city": "Woburn", "execution_branch_state": "MA", "execution_branch_zip_code": "01801"}'),

(4,'{ "amount": 1125, "funds_avail_date": "2001-03-12 00:00:00", "txn_date": "2001-03-12 00:00:00", "txn_type_cd": "CDT", "account_id": 4, "teller_emp_id": 2, "execution_branch_id": 1, "execution_branch_name": "Headquarters", "execution_branch_address": "3882 Main St.", "execution_branch_city": "Waltham", "execution_branch_state": "MA", "execution_branch_zip_code": "02451"}'),

(5,'{"amount": 250, "funds_avail_date": "2001-03-12 00:00:00", "txn_date": "2001-03-12 00:00:00", "txn_type_cd": "CDT", "account_id": 5, "teller_emp_id": 7, "execution_branch_id": null, "execution_branch_name": null, "execution_branch_address": null, "execution_branch_city": null, "execution_branch_state": null, "execution_branch_zip_code": null}'),

(6,'{ "amount": 325, "funds_avail_date": "2002-11-23 00:00:00", "txn_date": "2002-11-23 00:00:00", "txn_type_cd": "CDT", "account_id": 7, "teller_emp_id": 9, "execution_branch_id": null, "execution_branch_name": null, "execution_branch_address": null, "execution_branch_city": null, "execution_branch_state": null, "execution_branch_zip_code": null}'),

(7,'{ "amount": 350, "funds_avail_date": "2002-12-15 00:00:00", "txn_date": "2002-12-15 00:00:00", "txn_type_cd": "CDT", "account_id": 8, "teller_emp_id": 7, "execution_branch_id": 4, "execution_branch_name": "So. NH Branch", "execution_branch_address": "378 Maynard Ln.", "execution_branch_city": "Salem", "execution_branch_state": "NH", "execution_branch_zip_code": "03079"}'),

(8,'{ "amount": 154, "funds_avail_date": "2003-09-12 00:00:00", "txn_date": "2003-09-12 00:00:00", "txn_type_cd": "CDT", "account_id": 10, "teller_emp_id": 12, "execution_branch_id": null, "execution_branch_name": null, "execution_branch_address": null, "execution_branch_city": null, "execution_branch_state": null, "execution_branch_zip_code": null}'),

(9,'{ "amount": 55, "funds_avail_date": "2000-01-15 00:00:00", "txn_date": "2000-01-15 00:00:00", "txn_type_cd": "CDT", "account_id": 11, "teller_emp_id": 9, "execution_branch_id": 4, "execution_branch_name": "So. NH Branch", "execution_branch_address": "378 Maynard Ln.", "execution_branch_city": "Salem", "execution_branch_state": "NH", "execution_branch_zip_code": "03079"}'),

(10,'{ "amount": 452, "funds_avail_date": "2004-09-30 00:00:00", "txn_date": "2004-09-30 00:00:00", "txn_type_cd": "CDT", "account_id": 12, "teller_emp_id": 13, "execution_branch_id": 2, "execution_branch_name": "Woburn Branch", "execution_branch_address": "422 Maple St.", "execution_branch_city": "Woburn", "execution_branch_state": "MA", "execution_branch_zip_code": "01801"}');

select * from ex4t6.transactions;

-- 2. Troba la consulta SQL utilitzant les funcions proporcionades per MySQL per a manegar codi JSON  que retornaria la solució a les seguents preguntes. 

-- 2.1. Quina consulta utilitzaries per obtenir l'import (amount) de totes les transaccions de la taula transactions (Utilitza la funció JSON_UNQUOTE per a eleminar les cometes)?
SELECT JSON_UNQUOTE(txn_data->'$.amount') AS amount FROM transactions;

-- 2.2 Com podries filtrar les transaccions que tenen una quantitat superior a 200 (utilitza JSON_EXTRACT?
SELECT * FROM transactions
WHERE JSON_EXTRACT(txn_data, '$.amount') > 200;

-- 2.3 Escriu una consulta que obtingui l'ID de la transacció (txn_id) i la data de la transacció (txn_date) per totes les transaccions.
SELECT txn_id, JSON_UNQUOTE(txn_data->'$.txn_date') AS txn_date FROM transactions;

-- 2.4 Escriu una consulta que recuperi l'ID del compte (account_id) i l'import (amount) de les transaccions, unint les taules transactions i accounts per account_id.
SELECT a.account_id, JSON_UNQUOTE(t.txn_data->'$.amount') AS amount 
FROM accounts a JOIN transactions t ON JSON_UNQUOTE(t.txn_data->'$.account_id') = a.account_id;

-- 2.5 Com podries calcular l'import total de les transaccions per cada compte (account_id)?
SELECT 
    JSON_UNQUOTE(txn_data->'$.account_id') AS account_id,

    SUM(JSON_UNQUOTE(txn_data->'$.amount')) AS total_amount
FROM transactions

GROUP BY account_id;


