/* WHERE CLAUSE */
/* ------------ */
SELECT product_name, issue, date_received, date_sent
FROM consumer_complaints
WHERE date_received = date_sent;

/* AND OPERATOR */
/* ------------ */
SELECT product_name, issue, tags, timely_response
FROM consumer_complaints
WHERE tags = 'Servicemember' AND timely_response = 'Yes';

/* OR OPERATOR */
/* ----------- */
SELECT product_name, issue, state_name
FROM consumer_complaints
WHERE state_name = 'NY' OR state_name = 'CA';

/* LIKE OPERATOR */
/* ------------- */
SELECT product_name
FROM consumer_complaints
WHERE product_name LIKE '%Credit%';

/* LIKE OPERATOR FOR FIX LETTERS */
/* ----------------------------- */
SELECT product_name
FROM consumer_complaints
WHERE product_name LIKE 'Credit_____';

/* LIKE OPERATOR FOR ALL */
/* --------------------- */
SELECT product_name
FROM consumer_complaints
WHERE product_name LIKE 'Credit_____%';

/* LIKE WITH LOWER OPERATOR */
/* ------------------------ */
-- Used if we dont know what will be the case
SELECT product_name
FROM consumer_complaints
WHERE LOWER(product_name) LIKE '%credit%';

/* LIKE WITH UPPER OPERATOR */
/* ------------------------ */
-- Used if we dont know what will be the case
SELECT product_name
FROM consumer_complaints
WHERE UPPER(product_name) LIKE '%CREDIT%';

/* LIKE OPERATOR FOR NUMBERS */
/* ------------------------- */
-- use to find zipcode containing 4 anywhere
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code LIKE '%4%';

/* LIKE OPERATOR FOR NUMBERS */
/* ------------------------- */
-- use to find zipcode starting from 4
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code LIKE '4____';

/* LIKE OPERATOR FOR NUMBERS */
/* ------------------------- */
-- use to find zipcode having 4 at middle 
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code LIKE '__4__';

/* NOT LIKE OPERATOR FOR NUMBERS */
/* ----------------------------- */
-- use to find zipcode which donot have 4 in start 
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code NOT LIKE '4%';

/* NOT LIKE OPERATOR FOR NUMBERS */
/* ----------------------------- */
-- use to find zipcode which donot have 4 anywhere 
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code NOT LIKE '%4%';

/* LIKE OPERATOR FOR NUMBERS */
/* ------------------------- */
-- use to find zipcode which have 4 digits 
SELECT company, product_name, zip_code
FROM consumer_complaints
WHERE zip_code LIKE '____';




