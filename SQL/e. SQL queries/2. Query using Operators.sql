-- # Operators in SQL Queries
-- This script demonstrates the use of various SQL operators in queries.

/*
 🎯 SUMMARY TABLE

 Operator     | Meaning                       | Example
 ---------------------------------------------------------------
 AND          | All conditions must be true    | marks > 70 AND age < 22
 OR           | Any condition true             | city='Delhi' OR city='Patna'
 NOT          | Reverse condition              | NOT city='Delhi'
 BETWEEN      | Range including limits         | marks BETWEEN 60 AND 90
 IN           | Multiple matching values       | city IN ('Patna','Delhi')
 LIKE         | Pattern matching               | name LIKE 'A%'
 IS NULL      | Empty values                   | city IS NULL
*/


-- ➤ Using AND Operator
SELECT * FROM student 
where marks > 70 AND age < 22;

-- ➤ Using OR Operator
SELECT * FROM student 
where city='Delhi' OR city='Patna';

-- ➤ Using NOT Operator
SELECT * FROM student 
where NOT city='Delhi';

-- ➤ Using BETWEEN Operator
SELECT * FROM student 
where marks BETWEEN 60 AND 90;

-- ➤ Using IN Operator
SELECT * FROM student 
where city IN ('Patna','Delhi');

-- ➤ Using LIKE Operator
SELECT * FROM student 
where name LIKE 'A%';

-- ➤ Using IS NULL Operator
SELECT * FROM student 
where city IS NULL;
-- End of SQL Operators Examples

