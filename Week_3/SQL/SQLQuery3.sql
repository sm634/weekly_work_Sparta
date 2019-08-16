USE film_db;

CREATE TABLE people (
person_id INT NOT NULL IDENTITY PRIMARY KEY, -- identity primary key automatically increments. 
person_name VARCHAR(255) NOT NULL, 
height DECIMAL(2,2)
); 

INSERT INTO people (person_id, person_name) VALUES (234, 'Harry Potter'); 

CREATE VIEW person_harry_potter AS SELECT (person_id) FROM people WHERE person_id = 234;