USE SpartaAcademy;

---- Table 1 -----

DROP TABLE Rooms;

CREATE TABLE Rooms
	(
     Room_id INT NOT NULL IDENTITY PRIMARY KEY,
	 [AcademyID] INT, 
     [RoomName] VARCHAR(20),
     [Description] VARCHAR(255),
     [Capacity] INT
	 )	
;


---- Table 2 -----

DROP TABLE Academies; 

CREATE TABLE Academies
	(
	Academy_id INT NOT NULL IDENTITY PRIMARY KEY, 
	[AcademyName] VARCHAR(255)
	)
;

----- Table 3 ------

DROP TABLE CourseCatalog;

CREATE TABLE CourseCatalog
	(
	Course_id INT NOT NULL IDENTITY PRIMARY KEY, 
	CourseName VARCHAR(255),
    Duration INT
	)
;

----- Table 4 ------

DROP TABLE Employees; 

SET DATEFORMAT mdy;

CREATE TABLE Employees
	(
	Employee_id INT NOT NULL IDENTITY PRIMARY KEY,
	[FirstName] VARCHAR(255),
    [LastName] VARCHAR(255),
    [EmployeeType] VARCHAR(255),
    [StartDate] DATE
    )
;

----- Table 5 ------

DROP TABLE [dbo].[CourseSchedule];

CREATE TABLE [dbo].[CourseSchedule]
	([CourseScheduleID] INT NOT NULL IDENTITY PRIMARY KEY, 
	 [AcademyID] INT,
     [RoomID] INT,
     [CourseID] INT,
	 [StartDate] DATE,
     [EndDate] DATE
	 )
;

----- Table 6 ------

DROP TABLE CourseScheduleTrainers;

CREATE TABLE CourseScheduleTrainers
	(
	[CourseScheduleID] INT,
	[TrainerID] INT,
    [TrainerType] VARCHAR(20)
	)
;

----- Table 7 -----
DROP TABLE CourseScheduleAttendees

CREATE TABLE CourseScheduleAttendees
	(
	[CourseScheduleID] INT,
    [AttendeeID] INT,
    [Active] INT
	)
;

