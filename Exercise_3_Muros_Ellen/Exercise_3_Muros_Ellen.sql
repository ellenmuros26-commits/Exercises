use employees;
/* 1. List all employees whose last names begin with P. */
SELECT f_name, l_name
FROM employee_data
WHERE l_name LIKE "P%";

/* 2. Display the names of all employees in the marketing division. */
SELECT f_name, l_name, title
FROM employee_data
WHERE title LIKE "%Marketing%";

/* 3. What will the following statement display*/
SELECT f_name, l_name, salary from employee_data where f_name like '%k%' ;
  
/* 4. List the last names and titles of all programmers */
SELECT l_name, title
FROM employee_data
WHERE title LIKE "%Programmer%";
