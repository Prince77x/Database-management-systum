# 📘 Data Definition Language (DDL) in DBMS

## 🔹 What is DDL?
DDL (**Data Definition Language**) is a subset of SQL used to **define, modify, and remove database structures** such as:
- Databases
- Tables
- Views
- Indexes
- Constraints  

👉 DDL deals with the **structure (schema)** of the database, not the data itself.  
👉 All DDL commands are **auto-committed**, meaning changes are permanent and cannot be rolled back in most DBMS.

---

## 🔹 Common DDL Commands

### 1. CREATE
Used to **create new database objects** (databases, tables, views, indexes).

**Syntax:**
```sql
CREATE DATABASE dbname;

CREATE TABLE tablename (
    column_name datatype [constraints],
    ...
);
Example:

sql
Copy code
-- Create a new database
CREATE DATABASE UniversityDB;

-- Create a new table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Email VARCHAR(50)
);

-- Create a view
CREATE VIEW StudentView AS
SELECT Name, Age FROM Student;
2. ALTER
Used to modify the structure of an existing database object.

Syntax & Examples:

sql
Copy code
-- Add a new column
ALTER TABLE Student ADD COLUMN Address VARCHAR(100);

-- Modify column datatype
ALTER TABLE Student MODIFY COLUMN Age SMALLINT;

-- Drop a column
ALTER TABLE Student DROP COLUMN Email;

-- Rename a table
ALTER TABLE Student RENAME TO StudentInfo;
3. DROP
Used to delete database objects permanently.
⚠️ Caution: All data and structure are lost permanently.

Syntax & Examples:

sql
Copy code
-- Drop a table
DROP TABLE Student;

-- Drop a database
DROP DATABASE UniversityDB;

-- Drop a view
DROP VIEW StudentView;
4. TRUNCATE
Used to delete all rows in a table but keeps the table structure.

Faster than DELETE because it resets storage.

Usually cannot be rolled back.

Example:

sql
Copy code
TRUNCATE TABLE Student;
5. RENAME
Used to rename a database object.

Example:

 
-- Rename a table
RENAME TABLE Student TO StudentInfo;
🔹 Key Points about DDL
DDL commands affect the schema, not the data.

Auto-commit: Most DDL commands are committed automatically.

Cannot rollback (depends on DBMS).

Used during database design and setup.

🔹 Quick Comparison Table
Command	Purpose	Example
CREATE	Create database, table, view, or index	CREATE TABLE Student (...)
ALTER	Modify database object structure	ALTER TABLE Student ADD COLUMN Email VARCHAR(50)
DROP	Delete database object permanently	DROP TABLE Student
TRUNCATE	Delete all rows from a table	TRUNCATE TABLE Student
RENAME	Rename a database object	RENAME TABLE Student TO StudentInfo

✅ Summary
- DDL defines and manages schema/structure.

- Commands include: CREATE, ALTER, DROP, TRUNCATE, RENAME.

- Changes are usually permanent (auto-commit).

- Essential during initial database design and schema updates.



# 📘 Data Manipulation Language (DML)

## 🔹 What is DML?
DML (**Data Manipulation Language**) is a subset of SQL used to **work with the data stored in database objects** like tables.  
- While **DDL** changes the **structure (schema)**,  
- **DML** changes the **data inside the structure**.  

👉 DML allows you to **insert, update, delete, and retrieve** data.  

---

## 🔹 Connection Between SQL and DML
- **SQL (Structured Query Language)** is the **umbrella language** used in relational databases.  
- DML is a **part of SQL**, just like DDL.  
- In other words:  

SQL = DDL + DML + DCL + TCL + DQL

 

Where:  
- **DDL** → Structure (CREATE, ALTER, DROP)  
- **DML** → Data (INSERT, UPDATE, DELETE)  
- **DQL** → Queries (SELECT – sometimes considered part of DML)  
- **DCL** → Security (GRANT, REVOKE)  
- **TCL** → Transactions (COMMIT, ROLLBACK)  

---

## 🔹 Types of DML
1. **Procedural DML**  
   - The user specifies **what data is needed** and **how to get it**.  
   - More detailed, often used in programming languages.  

2. **Non-Procedural DML** (most common in SQL)  
   - The user specifies **what data is needed**, not how.  
   - Example:  
   
   SELECT Name FROM Student WHERE Age > 18;
🔹 DML Commands
1. INSERT
Used to add new records into a table.

Syntax:

 
INSERT INTO table_name (col1, col2, col3, ...)
VALUES (val1, val2, val3, ...);
Example:

 
INSERT INTO Student (StudentID, Name, Age, Email)
VALUES (101, 'Alice', 20, 'alice@email.com');
2. UPDATE
Used to modify existing records in a table.

Syntax:

 
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
Example:

 
UPDATE Student
SET Age = 21, Email = 'alice21@email.com'
WHERE StudentID = 101;
⚠️ If WHERE is not used, all rows are updated.

3. DELETE
Used to remove existing records from a table.

Syntax:

 
DELETE FROM table_name WHERE condition;
Example:

 
DELETE FROM Student WHERE StudentID = 101;
⚠️ If WHERE is not used, all rows are deleted.

4. SELECT (DQL, but often treated as DML)
Used to retrieve records from a table.

Syntax:

 
SELECT column1, column2
FROM table_name
WHERE condition;
Example:

 
SELECT Name, Age FROM Student WHERE Age > 18;
🔹 Key Points about DML
DML works on data inside tables, not the schema.

Requires careful use of WHERE to avoid unwanted changes/deletions.

DML operations can be controlled with TCL (COMMIT, ROLLBACK, SAVEPOINT).

DML is most frequently used by developers and users in day-to-day database operations.

🔹 Quick Comparison Table
Command	Purpose	Example
INSERT	Add new records	INSERT INTO Student VALUES (101,'Alice',20)
UPDATE	Modify existing records	UPDATE Student SET Age=21 WHERE StudentID=101
DELETE	Remove records	DELETE FROM Student WHERE StudentID=101
SELECT	Retrieve records (query data)	SELECT * FROM Student

✅ Summary
DML = Part of SQL focused on data.

Commands: INSERT, UPDATE, DELETE, and SELECT.

SQL connects with DML as its sub-language for data operations.

Unlike DDL, DML changes can be rolled back using TCL commands.

 
