use Northwind;

GO

CREATE VIEW [USA employees] AS
SELECT EmployeeID, FirstName, LastName 
FROM Employees 
WHERE Country = 'USA'; 

SELECT FirstName FROM [UK employees];