# 4. Truncate Table
-- It is used to delete all the data from an existing table without removing the table structure itself.

### This will truncate all data from the student table
TRUNCATE TABLE student;

-- Faster than DELETE as it does not log individual row deletions.