# SQL Tables

Tables are the foundation of relational databases. They store data in rows and columns and help organize information efficiently.

## Overview

This module covers the creation, modification, and management of SQL tables.

## Topics Covered

### 1. CREATE TABLE
- Create a new table
- Define columns and data types
- Apply constraints

Example:
```sql
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2)
);
```

### 2. DROP TABLE
- Delete an existing table
- Removes all data and structure

Example:
```sql
DROP TABLE Employees;
```

### 3. RENAME TABLE
- Change the table name
- Preserves existing data

Example:
```sql
RENAME TABLE Employees TO Staff;
```

### 4. TRUNCATE TABLE
- Remove all rows
- Keep table structure intact

Example:
```sql
TRUNCATE TABLE Employees;
```

### 5. COPY TABLE
- Create a new table from an existing table

Example:
```sql
CREATE TABLE Emp_Copy AS
SELECT * FROM Employees;
```

### 6. TEMPORARY TABLES
- Used for session-specific data
- Automatically removed when the session ends

Example:
```sql
CREATE TEMP TABLE temp_table (
    ID INT,
    Name VARCHAR(50)
);
```

### 7. ALTER TABLE
- Add columns
- Modify columns
- Remove columns

Examples:
```sql
ALTER TABLE Employees ADD Email VARCHAR(100);

ALTER TABLE Employees MODIFY Salary DECIMAL(12,2);

ALTER TABLE Employees DROP COLUMN Email;
```

### 8. AUTO INCREMENT
- Automatically generates unique IDs
- Commonly used for primary keys

Example:
```sql
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE
);
```

### 9. SEQUENCES
- Generate unique numbers
- Useful for custom numbering

Example:
```sql
CREATE SEQUENCE seq_order_id
START WITH 1
INCREMENT BY 1;
```

## Learning Outcomes

After completing this module, you will be able to:

- Create and manage tables
- Modify table structures
- Use temporary tables
- Generate unique identifiers
- Organize data efficiently

## Repository Resource

This folder contains SQL Tables cheat sheets, examples, and practical references.

### Next Module

SQL Quaries
