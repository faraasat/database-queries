/* ALTER AND UPDATE THE TABLE */
/* -------------------------- */
-- Adding and updating global_sales:
ALTER TABLE console_games
ADD COLUMN global_sales float8;

UPDATE console_games
SET global_sales = na_sales + eu_sales + jp_sales + other_sales;
-- Adding and updating na_sales_percent:
ALTER TABLE console_games
ADD COLUMN na_sales_percent float8;

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

/* DATE_PART */
/* --------- */
-- To find years
SELECT *, DATE_PART('year', discontinued) - DATE_PART('year', first_retail_availability) AS years_existed
FROM console_dates
ORDER BY years_existed;

/* DATE_PART */
/* --------- */
-- To find month
SELECT *, DATE_PART('month', discontinued) - DATE_PART('month', first_retail_availability) AS months_existed
FROM console_dates
ORDER BY months_existed;

/* DATE_PART */
/* --------- */
-- To find month
SELECT *
FROM console_dates
WHERE DATE_PART('month', first_retail_availability) - 12 = 0 OR DATE_PART('month', first_retail_availability) - 11 = 0;

/* AGE KEYWORD */
/* ----------- */
-- To find month
SELECT *, AGE(discontinued, first_retail_availability) AS platform_alive
FROM console_dates
ORDER BY platform_alive;

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
SELECT to_date(CAST(game_year AS varchar(4)), 'yyyy')
FROM console_games
ORDER BY game_rank;

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







