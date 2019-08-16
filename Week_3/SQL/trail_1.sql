use film_db; 

-- commenting lines use 'ctrl + k' then 'ctrl + c'. To uncomment, use 'ctrl + k' then 'ctrl + u'. 
DROP TABLE film_table;
DROP TABLE people;

-- creating a table called "film_table" with two attributes. 
CREATE TABLE film_table
(
film_name VARCHAR(10), 
film_type VARCHAR(6)
);

---- using ALTER TABLE command to add a new column. 
--ALTER TABLE film_table ADD release_date DATETIME, film_rating INT; 

---- INSERTING DATA INTO TABLES. 

-- inserting values into a table using 'INSERT INTO'. 
--INSERT INTO film_table (film_type, film_rating) VALUES ('horror', 2); 

--SELECT film_type FROM film_table; 

-- ERROR TEST

---- Missing Column
--SELECT rating_average FROM film_table; 

---- Missing quote mark
--INSERT INTO film_table (film_type) VALUES fantasy';


-- NULL AND DEFAULT
-- by using NOT NULL we can force the table not to accept empty fields for that column (this is a form of data validation). 

--CREATE TABLE people (
--person_id INT NOT NULL IDENTITY PRIMARY KEY, -- identity primary key automatically increments. 
--person_name VARCHAR(255) NOT NULL, 
--height DECIMAL(2,2)
--); 

--INSERT INTO people (person_id, person_name) VALUES (234, 'Harry Potter'); 

--CREATE VIEW person_harry_potter AS SELECT (person_id) FROM people WHERE person_id = 234;








