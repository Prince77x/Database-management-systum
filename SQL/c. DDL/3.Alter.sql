# 3. Alter Table
-- It is used to modify the structure of an existing table in the database.
---
### This will add a new column 'address' to the student table
ALTER TABLE student
ADD COLUMN stu_address varchar(250);
---
### This will modify the data type of the 'marks' column in the student table
ALTER TABLE student
MODIFY COLUMN marks DECIMAL(6,3);
---
### This will rename the 'email' column to 'student_email' in the student table
ALTER TABLE student 
RENAME COLUMN email To student_email;
---
### This will drop the 'age' column from the student table
ALTER TABLE student
DROP COLUMN age;
---
### This will rename the student table to learners
ALTER TABLE student
RENAME TO learners;
---
### This will set a default value for the 'gender' column in the student table
ALTER TABLE student
ALTER COLUMN gender SET DEFAULT 'Other';
---
### This will remove the default value for the 'created_at' column in the student table
ALTER TABLE student 
ALTER COLUMN created_at DROP DEFAULT;
---




