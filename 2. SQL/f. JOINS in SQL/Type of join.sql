# 🔗 SQL Joins  

SQL **JOINs** are used to combine rows from two or more tables **based on a related column** (usually a foreign key).

You use JOINs when data is stored in **multiple tables** following normalization rules.

---

## 📌 Example Tables

### `students`
| student_id | name  | city   |
|------------|--------|--------|
| 1 | Amit  | Patna  |
| 2 | Riya  | Delhi  |
| 3 | Sam   | Mumbai |
| 4 | Neha  | Patna  |

### `marks`
| student_id | subject | score |
|------------|---------|--------|
| 1 | Math | 88 |
| 2 | Math | 92 |
| 3 | Math | 75 |
| 5 | Math | 80 |   ← (No matching student)

---


-- Type of joins in SQL
-- 1. Natural Join : It will automatically join the tables based on the common columns.
SELECT * FROM table1
NATURAL JOIN table2;

-- 2. Cross Join : It will return the Cartesian product of the two tables.
SELECT * FROM table1 Cross JOIN table2;
            --or--
SELECT * FROM table1, table2;

-- 3. Inner Join : It will return only the matching rows from both tables.
SELECT * FROM table1 t
INNER JOIN table2 t2
ON t.common_column = t2.common_column;

-- 4.Outer Join : It will return all the rows from one table and the matching rows from the other table.
-- 4.1 Left Join : It will return all the rows from the left table and the matching rows from the right table.
SELECT * FROM table1 t
LEFT JOIN table2 t2
ON t.common_column = t2.common_column;

-- 4.2 Right Join : It will return all the rows from the right table and the matching rows from the left table.
SELECT * FROM table1 t
RIGHT JOIN table2 t2
ON t.common_column = t2.common_column;

