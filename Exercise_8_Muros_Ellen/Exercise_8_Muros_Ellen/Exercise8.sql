use employees;

/*1. How many unique salary packages does our company, Bignet, offer? List them is descending order.*/
SELECT DISTINCT salary
FROM employee_data
ORDER BY salary DESC;

/*2. How many distinct first names do we have in our database?*/
SELECT COUNT(DISTINCT f_name)
FROM employee_data;
