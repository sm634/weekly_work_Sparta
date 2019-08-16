USE Northwind

---- Q1:-
--SELECT * FROM Customers;

---- Q2:-
--SELECT * FROM Customers
--WHERE City = 'Paris'; 

---- Q3:-
--SELECT * FROM Employees 
--WHERE City = 'london'; 


---- Q4:-
--SELECT * FROM Employees
--WHERE TitleOfCourtesy = 'Dr.';

---- Q5:-
--SELECT * FROM Products
--WHERE Discontinued = 1;

---- Q6:-
--SELECT TOP 100 CompanyName, City FROM Customers
--WHERE Country = 'France';

---- Q7:-
--SELECT ProductName, UnitPrice FROM Products
--WHERE CategoryID = 1 AND Discontinued = '0'; 

--SELECT DISTINCT(TitleOfCourtesy) FROM Employees; 

---- Q8:-
--SELECT ProductName, UnitPrice FROM Products
--WHERE UnitsInStock > 0 AND UnitPrice > 29.99;

---- Q9:-
--SELECT ProductName, UnitPrice FROM Products
--WHERE UnitsInStock > 0 OR UnitPrice > 29.99; 

---- Q10:-
--SELECT DISTINCT Country FROM Customers
--WHERE ContactTitle = 'Owner'; 

---- Q11:- Using Wildcard, with %. 
--SELECT ProductName FROM Products
--WHERE ProductName LIKE 'Ch%';

---- Q12:- Wildcard with '_'.
--SELECT * FROM Customers WHERE Region LIKE '_A';

---- Q13:- IN operator.
--SELECT * FROM Customers WHERE Region IN ('WA','SP'); 

---- Q14:- Between operator. 
--SELECT * FROM EmployeeTerritories 
--WHERE TerritoryID BETWEEN 06800 AND 09999;

--ACTIVITY--

---- A1
--SELECT ProductName, ProductID FROM Products WHERE UnitPrice < 5.00;

---- A2
--SELECT CategoryName FROM Categories WHERE CategoryName LIKE 'B%' OR CategoryName LIKE 'S%';

---- A3
--SELECT COUNT(*) FROM Orders WHERE EmployeeID IN (5,7); 

---- Q15
--SELECT CompanyName AS "Company Name", City + ', ' + Country AS City FROM Customers;

---- Q16
--SELECT FirstName + ' ' + LastName AS "Employee Name" FROM Employees;

---- Q17
--SELECT CompanyName AS "Company Name", City + ', ' + Country AS City FROM Customers WHERE Region IS NULL;

---- Activity --
--SELECT DISTINCT Country FROM Customers WHERE Region IS NOT NULL; 

---- Q18
--SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity AS "Gross Total"
--FROM [Order Details];

---- Activity --
--SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity AS "Gross Total", (UnitPrice*Quantity)*(1-Discount) As "Net Total"
--FROM [Order Details];

---- Q19
--SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity AS "Gross Total" 
--FROM [Order Details]
--ORDER BY 4 DESC; 

---- Activity --
--SELECT OrderID, UnitPrice*Quantity AS "Gross Total" 
--FROM [Order Details] 
--ORDER BY 2 DESC;

---- Q20
--SELECT PostalCode "Post Code", LEFT(PostalCode, CHARINDEX(' ',PostalCode)-1) AS "Post Code Region", 
--CHARINDEX(' ',PostalCode) AS "Space Found", Country
--FROM Customers
--WHERE Country = 'UK';  

-- Activity --
--SELECT ProductName FROM Products; 

--SELECT LEFT(ProductName, CHARINDEX('''',ProductName)) AS "Products with single quote" 
--FROM Products 
--WHERE CHARINDEX('''',ProductName)>0
--; 

-- Activity --
--SELECT FirstName + ' ' + LastName AS "Name", DATEDIFF(YYYY,BirthDate,GETDATE()) AS "Age" FROM Employees ORDER BY 2 DESC; 

---- Q21: - SELECT CASE using WHEN, THEN, ELSE and using END to ensure that the conditions are stopped. 
--SELECT CASE 
--WHEN DATEDIFF(DD, OrderDate,ShippedDate) > 5 AND DATEDIFF(DD,OrderDate,ShippedDate) < 10 THEN 'Warning'   
--WHEN DATEDIFF(DD, OrderDate, ShippedDate) < 5 THEN 'On Time'
--ELSE 'Overdue'
--END AS "Status"
--FROM Orders
--;

---- Activity --
--SELECT FirstName + ' ' + LastName AS "Name", DATEDIFF(YYYY,BirthDate,GETDATE()) AS "Age", 
--CASE
--WHEN DATEDIFF(YYYY,BirthDate,GETDATE()) > 65 THEN 'Retired'
--WHEN DATEDIFF(YYYY,BirthDate,GETDATE()) > 60 THEN 'Retirement due'
--ELSE 'More than 5 years to go'
--END AS "Retirment Status"
--FROM Employees
--ORDER BY "Age" DESC
--;

-- Q22: Aggregate Functions

--SELECT 
--ProductName AS "Product Name", 
--SUM(UnitsOnOrder) AS "Total On Order",
--AVG(UnitsOnOrder) AS "Avg On Order",
--Min(UnitsOnOrder) AS "Min On Order",
--Max(UnitsOnOrder) AS "Max On Order"
--From Products
--;

-- Q23: - Using Aggregate functions and Group by.  

--SELECT 
--SupplierID AS "Supplier ID", 
--SUM(UnitsOnOrder) AS "Total On Order",
--AVG(UnitsOnOrder) AS "Avg On Order",
--Min(UnitsOnOrder) AS "Min On Order",
--Max(UnitsOnOrder) AS "Max On Order"
--From Products
--GROUP BY SupplierID
--;

---- Activity -- 

--SELECT AVG(ReorderLevel) AS "Average Reorder Level" 
--FROM Products 
--GROUP BY CategoryID 
--ORDER BY "Average Reorder Level" DESC
--; 

--SELECT SupplierID,
--SUM(UnitsOnOrder) AS "Total On Order", 
--AVG(UnitsOnOrder) AS "Avg on Order"
--From Products
--GROUP BY SupplierID 
--;

---- Q24: - Using Having to add extra filter or condition to a query that is grouped by some category/column. 

--SELECT SupplierID,
--SUM(UnitsOnOrder) AS "Total On Order", 
--AVG(UnitsOnOrder) AS "Avg on Order"
--From Products
--GROUP BY SupplierID 
--HAVING AVG(UnitsOnOrder) > 5
--;

------------------- Joins and Subqueries ----------------------------

---- Q25: Inner join. 

----SELECT E.FirstName, ET.TerritoryID
----FROM Employees "E" INNER JOIN EmployeeTerritories "ET" ON E.EmployeeID = ET.EmployeeID;

--SELECT p.SupplierID "Supplier ID",
--s.CompanyName AS "Company Name",  
--avg(UnitsOnOrder) "Average Unit Order"
--FROM Products p INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID 
--GROUP BY p.SupplierID, s.CompanyName 
--;

---- Q26: Left Outer Join

--SELECT Products.SupplierID,
--Suppliers.CompanyName
--FROM Products LEFT OUTER JOIN Suppliers ON products.SupplierID = Suppliers.SupplierID
--; 

--SELECT Suppliers.CompanyName,
--Products.SupplierID
--From Suppliers Right OUTER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
--; 

---- Q27: Double (Inner Join)

--SELECT ProductName, UnitPrice, CompanyName AS "Supplier", 
--CategoryName AS "Category"
--FROM Products 
--Inner Join Suppliers ON Products.SupplierID = Suppliers.SupplierID
--Inner Join Categories ON Products.CategoryID = Categories.CategoryID
--; 

-- Activity -- 

--SELECT OrderID, OrderDate, CompanyName,Freight, FirstName + ' ' + LastName AS "Name"
--FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
--INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--; 

--------------------- Subqueries -------------------------------

---- Q28

--SELECT CompanyName AS "Customer"
--FROM Customers WHERE CustomerID NOT IN
--(SELECT CustomerID FROM Orders)
--; 

---- Q29
--SELECT * FROM [ORDER DETAILS] WHERE Productid IN (SELECT ProductID FROM Products WHERE Discontinued = '1');

---- Q30
--SELECT OrderID, O.ProductID, O.UnitPrice, Quantity, Discount
--FROM [Order Details] "O" INNER JOIN Products ON O.ProductID = Products.ProductID 
--WHERE Products.ProductID IN (SELECT ProductID FROM Products WHERE Discontinued = '1')
--;   

---- Q31
--SELECT EmployeeID AS "Employee/Supplier"
--FROM Employees
--UNION All 
--SELECT SupplierID
--FROM Suppliers
--;

