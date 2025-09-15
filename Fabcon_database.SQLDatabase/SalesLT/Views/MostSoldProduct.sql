CREATE VIEW SalesLT.MostSoldProduct AS
SELECT TOP 1 p.Name AS ProductName, SUM(sod.OrderQty) AS TotalQuantitySold
FROM SalesLT.SalesOrderDetail sod
JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalQuantitySold DESC;

GO

