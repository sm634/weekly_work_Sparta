use Northwind;

DROP VIEW [uk employees];

-- Does not actually store the database. It is only a temporary instance or image (virtual table) of at table that you can manipulate. 

GO

CREATE VIEW [uk employees] AS
SELECT FirstName, LastName, Country 
FROM Employees 
WHERE Country = 'UK'; 

GO


