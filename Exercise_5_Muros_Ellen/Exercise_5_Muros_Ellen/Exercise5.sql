use addressbook;

/* 1. List all employees who hold the titles of "Senior Programmer" and "Multimedia Programmer".*/
SELECT f_name, l_name, title
FROM employee_data
WHERE title IN ('Senior Programmer', 'Multimedia Programmer');

/*2. List all employee names with salaries for employees who draw between $70000 and $90000.*/
SELECT f_name, l_name, salary
FROM employee_data
WHERE salary BETWEEN 70000 AND 90000;

/*3. What will the following statement display?*/
SELECT f_name, l_name, 
title from employee_data 
where title NOT IN ('Programmer', 'Senior Programmer', "Multimedia Programmer");

/*4. Here is a more complex statement that combines both BETWEEN and IN. What will it display?*/
SELECT f_name, l_name, title, age
FROM employee_data
WHERE title NOT IN ('Programmer', 'Senior Programmer', 'Multimedia Programmer')
  AND age NOT BETWEEN 28 AND 32;