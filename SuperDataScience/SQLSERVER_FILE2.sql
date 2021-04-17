/* ALTER AND UPDATE THE TABLE */
/* -------------------------- */
-- Adding and updating global_sales:
ALTER TABLE console_games
ADD global_sales float;

UPDATE console_games
SET global_sales = na_sales + eu_sales + jp_sales + other_sales;

-- Adding and updating na_sales_percent:
ALTER TABLE console_games
ADD na_sales_percent float;

UPDATE console_games
SET na_sales_percent = na_sales / global_sales * 100
WHERE global_sales > 0;

/* ORDER BY */
/* -------- */
-- Ascending order
SELECT * 
FROM console_games
ORDER BY game_rank ASC;
-- Descending order
SELECT * 
FROM console_games
ORDER BY game_rank DESC;
-- Ascending and Descending order
SELECT * 
FROM console_games
ORDER BY platform ASC, game_year ASC;

/* LENGHT */
/* ------ */
SELECT game_name, length(game_name) 
FROM console_games;

/* LEFT AND RIGHT */
/* -------------- */
-- To select given number of word from left of text
SELECT publisher, left(publisher, 3) 
FROM console_games;
-- To select given number of word from right of text
SELECT publisher, right(publisher, 3) 
FROM console_games;

/* REVERSE */
/* ------- */
-- To select given number of word from left of text
SELECT genre, reverse(genre) 
FROM console_games;

/* AS KEYWORD */
/* ---------- */
-- To select given number of word from left of text
SELECT *, (discontinued - first_retail_availability)/365 AS days_existed
FROM console_dates
ORDER BY days_existed;

/* DATEDIFF */
/* -------- */
-- To find years
SELECT *, DATEDIFF(YEAR, discontinued, first_retail_availability) AS years_existed
FROM console_dates
ORDER BY years_existed;

/* DATEDIFF */
/* -------- */
-- To find month
SELECT *, DATEDIFF(MONTH, discontinued, first_retail_availability) AS months_existed
FROM console_dates
ORDER BY months_existed;

/* DATEPART */
/* -------- */
-- To find month
SELECT platform_name, first_retail_availability
from [dbo].[console_games]
WHERE DATEPART(MONTH, first_retail_availability) - 11 = 0;

/* CAST KEYWORD */
/* ------------ */
-- To type cast
SELECT CAST(game_year as varchar(4))
FROM console_games
ORDER BY game_rank;

/* CAST KEYWORD */
/* ------------ */
-- To type cast
SELECT game_year::varchar(4)
FROM console_games
ORDER BY game_rank;

/* CAST KEYWORD */
/* ------------ */
-- To type cast
SELECT CAST(game_year AS varchar(4))
FROM console_games
ORDER BY game_rank;

/* CONVERT KEYWORD */
/* --------------- */
-- To type cast
SELECT CONVERT(varchar, game_year)
FROM console_games


/* NULL */
/* ---- */
-- NULL is even not equal to another null
SELECT *
FROM console_games
WHERE game_name IS NULL;

/* ROUND KEYWORD */
/* ------------- */
UPDATE console_games
SET jp_sales = round((na_sales + eu_sales + other_sales) / 3)
WHERE game_name = 'Brain Age: Train Your Brain in Minutes a Day';








