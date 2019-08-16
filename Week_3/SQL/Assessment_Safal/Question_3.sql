USE SpartaAcademy;

------- Question 3.1 -------

SELECT ca.CourseName AS "Course Name", 
	cs.StartDate AS "Start Date", 
	cs.EndDate AS "End Date", 
	a.AcademyName AS "Academy", 
	r.RoomName AS "Room", 
	et.FirstName + ' ' + et.LastName AS "Trainer", 
	ea.FirstName + ' ' + ea.LastName AS "Spartan"  
	FROM CourseSchedule cs
	INNER JOIN CourseCatalog ca ON ca.Course_id = cs.CourseID
	INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
	INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
	INNER JOIN Employees ea ON csa.AttendeeID = ea.Employee_id
	INNER JOIN Employees et ON cst.TrainerID = et.Employee_id 
	INNER JOIN Rooms r ON cs.RoomID = r.Room_id
	INNER JOIN Academies a ON r.AcademyID = a.Academy_id
;


--------- Question 3.2. -----------

SELECT ca.CourseName AS "Course Name", 
	cs.StartDate AS "Start Date", 
	cs.EndDate AS "End Date", 
	a.AcademyName AS "Academy", 
	r.RoomName AS "Room", 
	et.FirstName + ' ' + et.LastName AS "Trainer", 
	LEFT(ea.FirstName,1) + '. ' + LEFT(ea.LastName,1) AS "Spartan Initials"  
	FROM CourseSchedule cs
	INNER JOIN CourseCatalog ca ON ca.Course_id = cs.CourseID
	INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
	INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
	INNER JOIN Employees ea ON csa.AttendeeID = ea.Employee_id
	INNER JOIN Employees et ON cst.TrainerID = et.Employee_id 
	INNER JOIN Rooms r ON cs.RoomID = r.Room_id
	INNER JOIN Academies a ON r.AcademyID = a.Academy_id
;


------- Exercise 3.3 ----------

ALTER TABLE CourseSchedule
	ADD [Check Date] DATE;

UPDATE CourseSchedule
	SET [Check Date] = DATEADD(mm,2,EndDate)
	WHERE CourseScheduleID = 1
;

UPDATE CourseSchedule
	SET [Check Date] = DATEADD(mm,3,EndDate)
	WHERE CourseScheduleID != 1
;


SELECT ca.CourseName AS "Course Name", 
	cs.StartDate AS "Start Date", 
	cs.EndDate AS "End Date", 
	cs.[Check Date] AS "Check Date",
	a.AcademyName AS "Academy", 
	r.RoomName AS "Room", 
	et.FirstName + ' ' + et.LastName AS "Trainer", 
	LEFT(ea.FirstName,1) + '. ' + LEFT(ea.LastName,1) AS "Spartan"  
	FROM CourseSchedule cs
	INNER JOIN CourseCatalog ca ON ca.Course_id = cs.CourseID
	INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID
	INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID
	INNER JOIN Employees ea ON csa.AttendeeID = ea.Employee_id
	INNER JOIN Employees et ON cst.TrainerID = et.Employee_id 
	INNER JOIN Rooms r ON cs.RoomID = r.Room_id
	INNER JOIN Academies a ON r.AcademyID = a.Academy_id
;


