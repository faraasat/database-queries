/* CREATE KEYWORD */
/* -------------- */	
CREATE TABLE movie(
	movie_name VARCHAR(100),
	movie_year INTEGER,
	country VARCHAR(100),
	genre VARCHAR(100) NOT NULL,
	PRIMARY KEY(movie_name, movie_year)
);	

/* INSERT INTO KEYWORD */
/* ------------------- */
INSERT INTO movie
VALUES('SE7EN', 1995, 'USA', 'Mystic, Crime'), ('INTERSTELLAR', 2014, 'USA', 'SCIENCE FICTION'), 
('The Green Mile', 1999, 'USA', 'Mystic, Drama');

INSERT INTO movie VALUES('THE GODFATHER12', 1992, '' , 'Crime');

/* UPDATE KEYWORD */
/* -------------- */
UPDATE movie
SET country = 'USA'
WHERE movie_name = 'THE GODFATHER12' AND movie_year = 1992;

/* ALTER KEYWORD */
/* ------------- */
ALTER TABLE movie 
ADD director VARCHAR(150);

UPDATE movie
SET director = 'Christopher Nolan'
WHERE lower(movie_name) = 'interstellar';

/* DELETE KEYWORD */
/* -------------- */
INSERT INTO movie VALUES('TEST', 1992, '' , 'TEST');

DELETE FROM movie
WHERE movie_name = 'TEST';

/* DROP KEYWORD */
/* ------------ */
ALTER  TABLE movie
DROP COLUMN director;
