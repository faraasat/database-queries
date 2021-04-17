/* TO VERIFY 1NF */
/* ------------- */
SELECT COUNT(*) 
FROM transactions;  -- 3455 ROWS

SELECT COUNT(*) 
FROM 
(
	SELECT DISTINCT *
	FROM transactions
) AS abc;  -- 3455 ROWS

/* TO VERIFY 2NF */
/* ------------- */
SELECT *
FROM transactions;

-- to separate the columns that do not depends wholly on prime attributes.
-- =======================================================================

-- Create table with columns that do not depend wholly
CREATE TABLE TMP AS
SELECT  customerid, 
		firstname, 
		surname, 
		shipping_state, 
		loyalty_discount
FROM transactions;  -- 3455 ROWS

-- Remove duplicate
CREATE TABLE CUSTOMERS AS
SELECT DISTINCT *
FROM TMP;  -- 942 ROWS

-- Removing columns from transactions
ALTER TABLE transactions
DROP COLUMN FIRSTNAME,
DROP COLUMN SURNAME,
DROP COLUMN SHIPPING_STATE,
DROP COLUMN LOYALTY_DISCOUNT;

DROP TABLE TMP;

/* TO VERIFY 3NF */
/* ------------- */
SELECT *
FROM customers;   -- In 3NF
SELECT *
FROM transactions;   -- NOT IN 3NF

CREATE TABLE TMP AS
SELECT  ITEM,
		DESCRIPTION,
		RETAIL_PRICE
FROM TRANSACTIONS;  --3455 ROWS

CREATE TABLE ITEMS AS 
SELECT DISTINCT *
FROM TMP;   -- 126 ROWS --  IN 3NF

ALTER TABLE TRANSACTIONS 
DROP COLUMN DESCRIPTION,
DROP COLUMN RETAIL_PRICE;

DROP TABLE  TMP;







