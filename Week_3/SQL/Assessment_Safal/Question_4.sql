USE SpartaAcademy;

----------- Question 4.1 ------------
----------- Adding Foreign Keys ------

ALTER TABLE CourseScheduleTrainers
	ADD CONSTRAINT [cst.CourseScheduleID] FOREIGN KEY(CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
	CONSTRAINT [cst.TrainerID] FOREIGN KEY(TrainerID) REFERENCES Employees(Employee_id)
;

ALTER TABLE CourseScheduleAttendees
	ADD CONSTRAINT [csa.CourseScheduleID] FOREIGN KEY(CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
	CONSTRAINT [csa.CourseScheduleID] FOREIGN KEY(CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID)
;


---------- Question 4.2 -------------
----- Adding further constraints for trainer type and employee type and maximum capacity for rooms to 25 ----

ALTER TABLE CourseScheduleTrainers
	ADD CONSTRAINT [cst.TrainerType] CHECK (TrainerType = 'T' OR TrainerType = 'A')
;

ALTER TABLE Employees
	ADD CONSTRAINT [e.EmployeeType] CHECK (EmployeeType = 'T' OR EmployeeType = 'S' OR EmployeeType = 'A')
;

ALTER TABLE Rooms
	ADD CONSTRAINT [r.Capacity] CHECK (Capacity <= 25)
; 