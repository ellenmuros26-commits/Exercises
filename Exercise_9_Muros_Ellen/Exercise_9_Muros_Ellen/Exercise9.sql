use addressbook;
/*1. List the minimum perks package.*/
SELECT MIN(perks)
FROM employee_data;


/*2. List the maximum salary given to a "Programmer".*/
SELECT MAX(salary)
FROM employee_data
WHERE title = 'Programmer';


/*3. Display the age of the oldest "Marketing Executive".*/
SELECT MAX(age)
FROM employee_data
WHERE title = 'Marketing Executive';


/*4. (Tricky!) Find the first and last names of the oldest employee.*/
SELECT f_name, l_name, age
FROM employee_data
ORDER BY age DESC
LIMIT 1;