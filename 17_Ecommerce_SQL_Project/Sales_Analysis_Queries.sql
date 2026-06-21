-- Total Orders query

SELECT COUNT(*) AS TotalOrders
FROM Orders;

-- Total Revenue query

SELECT SUM(Price) AS TotalRevenue
FROM Products;

-- Product Price Ranking query

SELECT ProductName, Price
FROM Products
ORDER BY Price DESC;
