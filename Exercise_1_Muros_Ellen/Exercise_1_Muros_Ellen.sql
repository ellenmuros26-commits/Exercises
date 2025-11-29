/* EXERCISE 1 */

/* 1. Write the complete SQL statement for creating a new database called addressbook*/
CREATE DATABASE addressbook;

/* 2. Which statement is used to list the information about a table? How do you use this statement?*/
DESCRIBE employee_data;

/* 3. How would you list all the databases available on the system?*/
SHOW DATABASES;

/* 4. Write the statement for inserting the following data in employee data table First name: Rudolf Last name: Reindeer Title: Business Analyst Age: 34 Years of service: 2 Salary: 95000 Perks: 17000 email: rudolf@bugnet.com */
INSERT INTO employee_data
(f_name, l_name, title, age, yos, salary, perks, email)
VALUES
("Rudolf", "Reindeer", "Business Analyst", 34, 2, 95000, 17000, "rudolf@bugnet.com");

/* 5. Give two forms of the SELECT statement that will list all the data in employee_data table.*/
SELECT * FROM employee_data;
SELECT emp_id, f_name, l_name, title, age, yos, salary, perks, email FROM employee_data;

/* 6. What will select f_name, email from employee_data; display?*/
SELECT f_name, email FROM employee_data;

/* 7. Write the statement for listing data from salary, perks and yos columns of employee_data table. */
SELECT salary, perks, yos FROM employee_data;

/* 8. How can you find the number of rows in a table using the SELECT statement? */
SELECT COUNT(*) FROM employee_data;

/* 9. What will select salary, _name from employee_data; display? */
SELECT salary, l_name FROM employee_data;