-- All Products

SELECT *
FROM Products;

-- Most Expensive Product

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 1;

-- Category Wise Products

SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;
