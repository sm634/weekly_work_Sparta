-- 2.1. Design and build a suitable set of fully normalised tables to store information. 

----- Table 1: Course -----

DROP TABLE Course

CREATE TABLE Course
	(
	Course_id INT NOT NULL IDENTITY PRIMARY KEY, 
	[Course Name] VARCHAR(20),
	)
;  

INSERT INTO Course 
	VALUES ('BA-Test'), 
	('Engineering')
;

SELECT * FROM Course;

----- Table 2: StartDate -----
DROP TABLE StartDate;

SET DATEFORMAT dmy;

CREATE TABLE StartDate
	(
	start_id INT NOT NULL IDENTITY PRIMARY KEY,
	[Start Date] DATE,
	Course_id INT
	)
;

INSERT INTO StartDate
	VALUES ('15-01-2018', 1),
	('22-01-2018', 2)
; 

SELECT * FROM StartDate;

------ Join Test ----
--SELECT CourseName, [Start Date]
--FROM Course 
--INNER JOIN StartDate ON Course.Course_id = StartDate.Course_id
--;

----- Table 3: End Date -----

DROP TABLE EndDate;

SET DATEFORMAT dmy;

CREATE TABLE EndDate
	(
	End_id INT NOT NULL IDENTITY PRIMARY KEY,
	[End Date] DATE,
	Course_id INT
	)
;

INSERT INTO EndDate
	VALUES ('02-03-2018', 1),
	('03-03-2018', 2)
; 

SELECT * FROM EndDate; 

------ Table 4: Academy -----
DROP TABLE Academy;

CREATE TABLE Academy
	(
	Academy_id INT NOT NULL IDENTITY PRIMARY KEY,
	[Academy Name] VARCHAR(20),
	)
;

INSERT INTO Academy
	VALUES ('Richmond')
	;

----- Table 5: Room Name -----
DROP TABLE Room

CREATE TABLE Room
	(
	Room_id INT NOT NULL IDENTITY PRIMARY KEY, 
	[Room Name] VARCHAR(20),
	Academy_id INT
	)

INSERT INTO Room
	VALUES ('Room 1', 1),
	('Room 3', 1)
;

----- Table 6: Trainer -------

DROP TABLE Trainer;

CREATE TABLE Trainer
	(
	Trainer_id INT NOT NULL IDENTITY PRIMARY KEY, 
	[Trainer Name] VARCHAR(255),
	Course_id INT,
	Academy_id INT
	)
;

INSERT INTO Trainer
	Values ('Tim Cawte', 1, 1),
	('Richard Gurney', 2, 1)
;


----- Table 7: Spartan -----

DROP TABLE Spartans

CREATE TABLE Spartans
	(
	Spartan_id INT NOT NULL IDENTITY PRIMARY KEY,
	[Spartan Name] VARCHAR(255),
	Course_id INT,
	Trainer_id INT,
	Academy_id INT
	)
;

INSERT INTO Spartans
	VALUES ('Adam Smith', 1, 1, 1), 
	('John Williams', 1, 1, 1), 
	('Nick Willis', 1, 1, 1),
	('Jenny Jones', 1, 1, 1),
	('Katie Prince', 1, 1, 1),
	('Peter Brown', 1, 1, 1),
	('Mo Khan', 2, 2, 1),
	('Juan Carlos', 2, 2, 1),
	('Jan Miller', 2, 2, 1),
	('Kyle Carpenter', 2, 2, 1),
	('Alvarao Carlos', 2, 2, 1),
	('Margaret Baker', 2, 2, 1),
	('Oti Mwase', 2, 2, 1)
;


