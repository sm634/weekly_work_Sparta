USE Northwind;

-------------------- Question 5 -------------------------------

--Q5.1 - List all Employees from the Employees table and who they report to. 
SELECT E.EmployeeID,
	   E.FirstName + ' ' + E.LastName AS "Employee", 
	   E2.FirstName + ' ' + E2.LastName AS "Reports To"  
	FROM Employees E
	INNER JOIN Employees E2 ON E2.EmployeeID = E.ReportsTo
	ORDER BY [Reports To]
;


-- Q5.2 -List all Suppliers with total sales over $10,000 in the Order Details table. 
-- Include the Company Name from the Suppliers Table and present as a bar chart.

SELECT s.CompanyName AS "Suppliers With Total Sales Over $10,000",
	   ROUND(SUM((od.UnitPrice*od.Quantity)*(1-od.Discount)),0) AS "Total Sales"
	FROM [Order Details] od
	INNER JOIN Products p ON od.ProductID = p.ProductID
	INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
	GROUP BY s.CompanyName
	HAVING SUM((od.UnitPrice*od.Quantity)*(1-od.Discount)) > 10000
	ORDER BY 2 DESC
; 

-- Q5.3 - List the Top 10 Customers YTD for the latest year in the Orders file. Based on total value of orders shipped. 

SELECT TOP 10 c.CompanyName AS "Top 10 Customers",
	COUNT(o.ShippedDate) AS "Total Value of Orders Shipped",
	MAX(YEAR(o.OrderDate)) AS "Latest Year"		
	FROM Customers c
	INNER JOIN Orders o ON c.CustomerID = o.CustomerID
	GROUP BY c.CompanyName
	ORDER BY 2 DESC
;


-- q5.4. - Plot the Average Ship Time by month for all data in the Orders Table using a line chart as below.

SELECT YEAR(o.OrderDate) AS "Year", MONTH(O.OrderDate) AS "Month",
	AVG(DATEDIFF(dd, OrderDate, ShippedDate)) AS "Average Ship Time By Month"
	FROM Orders o
	GROUP BY MONTH(OrderDate), YEAR(OrderDate)
	ORDER BY "Year" ASC
;
