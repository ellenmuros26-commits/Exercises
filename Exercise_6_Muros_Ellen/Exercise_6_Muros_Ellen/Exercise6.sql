/*Exercise 6*/
use employees;

/*1. Order all employees on the basis of the salary they draw.*/
SELECT f_name, l_name, salary
FROM employee_data
ORDER BY salary ASC;

/*2. List all employees in descending order of their years of service.*/
SELECT f_name, l_name, yos
FROM employee_data
ORDER BY yos DESC;

/*3. What does the following statement display?*/
SELECT emp_id, l_name, title, age
FROM employee_data
ORDER BY title DESC, age ASC;

/*4. Display employees (last names followed by first names) who hold the title of either "Programmer" or "Web Designer" and sort their last names alphabetically.*/
SELECT l_name, f_name
FROM employee_data
WHERE title IN ('Programmer', 'Web Designer')
ORDER BY l_name ASC;

