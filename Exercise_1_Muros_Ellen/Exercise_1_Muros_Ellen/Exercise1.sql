INSERT INTO employee_data (f_name, l_name, title, age, yos, salary, perks, email) VALUES
("Manish", "Sharma", "CEO", 28, 4, 200000, 50000, "manish@bignet.com"),

("John", "Hagan", "Senior Programmer", 32, 5, 120000, 20000, "john.hagan@bignet.com"),
("Ganesh", "Pillai", "Senior Programmer", 32, 4, 115000, 18000, "ganesh.pillai@bignet.com"),

("Anamika", "Pandit", "Web Designer", 27, 2, 90000, 15000, "anamika.pandit@bignet.com"),
("Mary", "Anchor", "Web Designer", 26, 2, 85000, 15000, "mary.anchor@bignet.com"),

("Kim", "Hunter", "Senior Web Designer", 32, 4, 110000, 20000, "kim.hunter@bignet.com"),

("Roger", "Lewis", "System Administrator", 35, 6, 100000, 22000, "roger.lewis@bignet.com"),
("Danny", "Gibson", "System Administrator", 34, 5, 9000, 21000, "danny.gibson@bignet.com"),

("Hassan", "Rajabi", "Multimedia Programmer", 33, 3, 90000, 17000, "hassan.rajabi@bignet.com"),
("Paul", "Simon", "Multimedia Programmer", 43, 3, 85000, 16500, "paul.simon@bignet.com"),
("Arthur", "Hoopla", "Multimedia Programmer", 32, 3, 75000, 16800, "arthur.hoopla@bignet.com"),

("Mike", "Harper", "Senior Marketing Executive", 36, 6, 120000, 20000, "mike.harper@bignet.com"),

("Monica", "Sehgal", "Marketing Executive", 30, 3, 85000, 15000, "monica.sehgal@bignet.com"),
("Hal", "Simlai", "Marketing Executive", 27, 2, 70000, 13000, "hal.simlai@bignet.com"),
("Joseph", "Irvine", "Marketing Executive", 27, 2, 70000, 14000, "joseph.irvine@bignet.com"),

("Shahida", "Ali", "Customer Service Manager", 32, 4, 70000, 16000, "shahida.ali@bignet.com"),
("Peter", "Champion", "Finance Manager", 36, 6, 120000, 25000, "peter.champion@bignet.com"),

("Edward", "Sakamuro", "Programmer", 25, 1, 75000, 12000, "edward.sakamuro@bignet.com"),
("Fred", "Kruger", "Programmer", 31, 3, 75000, 15000, "fred.kruger@bignet.com"),
("John", "MacFarland", "Programmer", 34, 4, 80000, 15000, "john.macfarland@bignet.com"),
("Alok", "Nanda", "Programmer", 32, 3, 70000, 14000, "alok.nanda@bignet.com");
/* EXERCISE 1 */

/* 1. Write the complete SQL statement for creating a new database called addressbook*/
CREATE DATABASE addressbook;

/* 2. Which statement is used to list the information about a table? How do you use this statement?*/
DESCRIBE employee_data;

/* 3. How would you list all the databases available on the system?*/
SHOW DATABASES;

/* 4. Write the statement for inserting the following data in employee data table
First name: Rudolf
Last name: Reindeer
Title: Business Analyst
Age: 34
Years of service: 2
Salary: 95000
Perks: 17000
email: rudolf@bugnet.com */
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