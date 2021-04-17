/* CREATE KEYWORD */
/* -------------- */
CREATE DATABASE my_database;
	WITH
	OWNER = postgres
	ENCODING = 'UTF-8'
	CONNECTION LIMIT = -1;
	
CREATE TABLE movie(
	movie_name VARCHAR(50),
	movie_year INTEGER,
	country VARCHAR(100),
	genre VARCHAR NOT NULL,
	PRIMARY KEY(movie_name, movie_year)
);	

/* COPY KEYWORD */
/* ------------ */
COPY movie FROM 'C:\Users\FARASAT ALI AZEEMI\Desktop\MINE\DataBase\filename.csv' DELIMITER ',' CSV HEADER;

/* INSERT INTO KEYWORD */
/* ------------------- */
INSERT INTO movie VALUES('SE7EN', 1995, 'USA', 'Mystic, Crime');
INSERT INTO movie VALUES('INTERSTELLAR', 2014, 'USA', 'SCIENCE FICTION'), ('The Green Mile', 1999, 'USA', 'Mystic, Drama');
INSERT INTO movie VALUES('THE GODFATHER12', 1992, '' , 'Crime');

/* UPDATE KEYWORD */
/* -------------- */
UPDATE movie
SET country = 'USA'
WHERE movie_name = 'THE GODFATHER12' AND movie_year = 1992;
select * from movie

/* ALTER KEYWORD */
/* ------------- */
ALTER TABLE movie
ALTER COLUMN country
SET DEFAULT 'USA';

INSERT INTO movie VALUES('test', 1, DEFAULT, 'test');

ALTER TABLE movie 
ADD director VARCHAR(150);

ALTER TABLE table__name
ADD/ ALTER/ DELETE COLUMN column__name;

/* UPDATE KEYWORD */
/* -------------- */
UPDATE movie
SET director = 'Christopher Nolan'
WHERE lower(movie_name) = 'interstellar';

/* DELETE KEYWORD */
/* -------------- */
DELETE FROM movie
WHERE movie_name = 'test';

/* DROP KEYWORD */
/* ------------ */
ALTER  TABLE movie
DROP COLUMN director;
