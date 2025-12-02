use addressbook;


/*1. List the names of 5 youngest employees in the company.*/
SELECT f_name, l_name, age
FROM employee_data
ORDER BY age ASC
LIMIT 5;

/*2. Extract the next 5 entries starting with the 10 row.*/
SELECT *
FROM employee_data
LIMIT 5 OFFSET 10;

/*3. Display the names and salary of the employee who draws the largest salary.*/
SELECT f_name, l_name, salary
FROM employee_data
ORDER BY salary DESC
LIMIT 1;

/*4. What does the following statement display?*/
SELECT emp_id, age, perks
FROM employee_data
ORDER BY perks DESC
LIMIT 10;
