# SQL Queries

Master SQL queries to retrieve, insert, update, and manage data stored in relational databases. This section covers the most commonly used query operations with practical examples.

## Overview

SQL queries are used to interact with data stored in database tables. They help retrieve information, insert new records, update existing data, and remove unwanted records.

---

## Topics Covered

### 1. SELECT Statement

Retrieve data from one or more tables.

**Key Concepts**

* Query specific columns
* Filter data using WHERE
* Sort results using ORDER BY
* Group data using GROUP BY

**Example**

```sql
SELECT EmpID, EmpName, Salary
FROM Employees
WHERE Department = 'IT'
ORDER BY Salary DESC;
```

---

### 2. INSERT INTO Statement

Add new records to a table.

**Example**

```sql
INSERT INTO Employees
(EmpID, EmpName, Department, Salary)
VALUES
(5, 'Eva', 'HR', 55000);
```

---

### 3. Insert Multiple Rows

Insert multiple records using a single statement.

**Example**

```sql
INSERT INTO Employees
(EmpID, EmpName, Department)
VALUES
(6, 'Frank', 'IT'),
(7, 'Grace', 'Sales'),
(8, 'Hannah', 'HR');
```

---

### 4. UPDATE Statement

Modify existing records in a table.

**Example**

```sql
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'IT';
```

---

### 5. DELETE Statement

Remove records that match a condition.

**Example**

```sql
DELETE FROM Employees
WHERE Department = 'HR';
```

---

### 6. Delete Duplicate Rows

Remove duplicate records while keeping one occurrence.

**Example**

```sql
DELETE FROM Employees
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM Employees
    GROUP BY EmpID, EmpName
);
```

---

### 7. Dynamic Queries

Build and execute SQL statements dynamically at runtime.

**Example**

```sql
SET @dept = 'IT';

SET @sql = CONCAT(
'SELECT * FROM Employees
 WHERE Department = "', @dept, '"'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
```

---

### 8. Subqueries

Use one query inside another query.

**Example**

```sql
SELECT EmpName
FROM Employees
WHERE Department IN (
    SELECT Department
    FROM Departments
    WHERE Location = 'New York'
);
```

---

### 9. Joins

Combine data from multiple tables.

**Common Join Types**

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN

**Example**

```sql
SELECT a.EmpName, b.DepartmentName
FROM Employees a
INNER JOIN Departments b
ON a.DepartmentID = b.DepartmentID;
```

---

### 10. Aggregate Functions

Perform calculations on groups of data.

**Functions**

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

**Example**

```sql
SELECT
COUNT(*),
SUM(Salary),
AVG(Salary),
MIN(Salary),
MAX(Salary)
FROM Employees;
```

---

## Learning Outcome

After completing this section, you will be able to:

* Write SQL queries confidently
* Retrieve and filter data efficiently
* Insert, update, and delete records
* Work with joins and subqueries
* Use aggregate functions for data analysis
* Build dynamic and reusable SQL solutions

## Related Topics

* SQL Database
* SQL Tables
* SQL Clauses
* SQL Operators
* SQL Functions
* SQL Joins and Operations
* SQL Subqueries
* SQL Views
* SQL Indexes
* 
