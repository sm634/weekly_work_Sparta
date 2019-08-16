USE Northwind;

-- 1.1	Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.

SELECT CustomerID "Customer ID", CompanyName "Company", [Address], PostalCode "Post Code", City + ', ' + Country "City" 
	FROM Customers 
	WHERE City = 'Paris' OR City = 'London'
; 

-- 1.2	List all products stored in bottles.

SELECT ProductName "Product Name" 
	FROM Products 
	WHERE QuantityPerUnit LIKE '%bottle%'
;

--1.3	Repeat question above, but add in the Supplier Name and Country.

SELECT ProductName "Product Name", CompanyName "Company Name", Country "Country"
	FROM Products 
	INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
	WHERE Products.QuantityPerUnit LIKE '%bottle%'
; 

--1.4	Write an SQL Statement that shows how many products there are in each category. 
-- Include Category Name in result set and list the highest number first.


SELECT CategoryName, COUNT(*) AS "Number of Products in Each Category" 
	FROM Products 
	INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
	GROUP BY Categories.CategoryName
;

--1.5	List all UK employees using concatenation to join their title of courtesy, first name and last name together. 
-- Also include their city of residence. 

SELECT TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS "Name", City AS "City of Residence"
	FROM Employees 
	WHERE Country = 'UK'
;

--1.6 List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000. 
-- Use rounding or FORMAT to present the numbers.  

SELECT ROUND(SUM((od.UnitPrice*od.Quantity)*(1-od.Discount)),1) AS "Sales Totals", r.RegionDescription "Region"
	FROM [Order Details] od
	INNER JOIN Orders o ON o.OrderID = od.OrderID
	INNER JOIN EmployeeTerritories et ON et.EmployeeID = o.EmployeeID
	INNER JOIN Territories t ON t.TerritoryID = et.TerritoryID
	INNER JOIN Region r ON r.RegionID = t.RegionID
	GROUP BY r.RegionDescription
	HAVING ROUND(SUM((od.UnitPrice*od.Quantity)*(1-od.Discount)),1) > 1000000
;

-- 1.7	Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.

SELECT COUNT(*) AS "Number of Orders with Freight amount greater than 100" 
	FROM Orders
	WHERE ShipCountry = 'USA' OR ShipCountry = 'UK' AND Freight > 100.00
;

-- 1.8 Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.

SELECT TOP 1 OrderID "Order Number with the Highest Amount of Discount", Discount
	FROM [Order Details]
	ORDER BY Discount DESC
;



