use Books;

DROP TABLE Books_table;
--creating a table.


CREATE TABLE Books_table
	(
	Book_id INT IDENTITY PRIMARY KEY, 
	Title VARCHAR(255),
	Author VARCHAR(50),
	ReleaseYear DATE
	)
;

INSERT INTO Books_table
	VALUES ('The Book of Why', 'Judea Pearl', '2018'),
		   ('The Beginning of Infinity', 'David Deutsh', '2011'),
		   ('100 Years of Solitude', 'Gabriel Garcia Marquez', '1967'),
		   ('The Predictive Mind', 'Jakob Hohwy', '2013'),
		   ('Python for Data Analysis', 'Wes McKinney', '2017')


		   INSERT INTO Books_table VALUES (lively,hello,2018)
SELECT * FROM Books_table WHERE Title='The Book of Why'

;