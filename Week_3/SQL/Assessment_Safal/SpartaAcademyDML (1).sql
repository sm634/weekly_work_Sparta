USE SpartaAcademy;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 1'
           ,'Next to the new Lo; sign'
           ,12)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 2'
           ,'Behind the new Sparta sign'
           ,18)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 3'
           ,'No air-con'
           ,18)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 4'
           ,'Has second door with number lock'
           ,10)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Boardroom'
           ,'Use as last resort'
           ,14)
;

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Richmond')
;


INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Birmingham')
;

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Leeds')
;

INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('BA-Test',
           7)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('Engineering',
           12)
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Tim','Cawte','T','07/14/2017')
				 ;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Richard','Gurney','T','07/01/2017')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Adam','Smith','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('John','Williams','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Nick','Willis','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jenny','Jones','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Katie','Prince','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Peter','Brown','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Mo','Khan','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Juan','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jan','Miller','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Kyle','Carpenter','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Alvarao','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Margaret','Baker','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Oti','Mwase','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Joe','Mann','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Steve','Harris','S')
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,1
           ,1
           ,'01/15/2018'
           ,'03/02/2018'
		  )
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,3
           ,2
           ,'01/22/2018'
           ,'03/03/2018'
		  )
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (1
           ,1
           ,'T')
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (2
           ,2
           ,'T')
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,3
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,4
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,5
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,6
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,7
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,8
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,9
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,10
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,11
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,12
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,13
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,14
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,15
           ,1)
;

