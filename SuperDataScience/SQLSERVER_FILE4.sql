/* TO VERIFY 1NF */
/* ------------- */
SELECT COUNT(*) 
FROM transactions;  -- 3455 ROWS

SELECT COUNT(*) 
FROM 
(
	SELECT DISTINCT *
	FROM Transactions
) AS abc;  -- 3455 ROWS

/* TO VERIFY 2NF */
/* ------------- */
SELECT *
FROM transactions;

-- to separate the columns that do not depends wholly on prime attributes.
-- =======================================================================

-- Create table with columns that do not depend wholly
SELECT  customerid, 
		firstname, 
		surname, 
		shipping_state, 
		loyalty_discount
INTO TMP
FROM transactions;  -- 3455 ROWS

-- Remove duplicate
SELECT DISTINCT *
INTO CUSTOMERS
FROM TMP;  -- 942 ROWS

-- Removing columns from transactions
ALTER TABLE transactions
DROP COLUMN	FIRSTNAME,
			SURNAME,
			SHIPPING_STATE,
			LOYALTY_DISCOUNT;

DROP TABLE TMP;

/* TO VERIFY 3NF */
/* ------------- */
SELECT *
FROM customers;   -- In 3NF
SELECT *
FROM transactions;   -- NOT IN 3NF

SELECT  ITEM,
		DESCRIPTION,
		RETAIL_PRICE
INTO TMP
FROM TRANSACTIONS;  --3455 ROWS

SELECT DISTINCT *
INTO ITEMS
FROM TMP;   -- 126 ROWS --  IN 3NF

ALTER TABLE TRANSACTIONS 
DROP COLUMN DESCRIPTION,
			RETAIL_PRICE;

DROP TABLE  TMP;







