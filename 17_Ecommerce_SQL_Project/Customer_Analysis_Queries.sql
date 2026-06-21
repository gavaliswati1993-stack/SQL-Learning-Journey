-- Customer List query

SELECT *
FROM Customers;

-- Customers from Pune query

SELECT *
FROM Customers
WHERE City = 'Pune';

-- Total Customers query

SELECT COUNT(*) AS TotalCustomers
FROM Customers;
