use addressbook;

/*1. ﻿﻿﻿Display the sum of ages of employees working at Bignet.*/
SELECT SUM(age)
FROM employee_data;

/*2. ﻿﻿﻿How would you calculate the total of years of service the employees of Bignet have in the company?*/
SELECT SUM(yos)
FROM employee_data;

/*3. ﻿﻿﻿Calculate the sum of salaries and the average age of employees who hold "Programmer" title.*/
SELECT SUM(salary), AVG(age)
FROM employee_data
WHERE title = 'Programmer';

/*4. ﻿﻿﻿What do you understand from the following statement?*/
SELECT (SUM(perks) / SUM(salary) * 100)
FROM employee_data;
