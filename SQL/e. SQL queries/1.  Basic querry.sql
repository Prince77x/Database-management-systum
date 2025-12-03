# Q1. Check all employees from the "Employees" table.
answer:
select * from Employees;

##  '*' is a wildcard character that means "all columns".which give all columns from Employees table.

# Q2. Check the "FirstName" and "LastName" of all employees from the "Employees" table.
answer:
select FirstName ,LastName from Employees;

# Q3. Check all employees from the "Employees" table whose "City" is "London".
answer:
select * from Employees
where city = 'London';

# Q4. Check all employees from the "Employees" table whose "City" is "London" and "Title" is "Sales Manager".
answer:
select * from Employees 
where city = 'London' and Title = 'Sales Manager';
