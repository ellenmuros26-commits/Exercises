Use employees;
/* 1. ﻿﻿﻿Write the SELECT statement to extract the ids of employees who are more than 30 years of age. */
SELECT emp_id
FROM employee_data
WHERE age > 30;

/* 2. Write the SELECT statement to extract the first and last names of all web designers. */
SELECT f_name, l_name
FROM employee_data
WHERE title = "Web Designer";

/* 3. What will the following SELECT statement display:*/ 
SELECT * from employee_data where salary <=100000; 
  

/* 4. How will you display the salaries and perks for employees who have more than $16000 as perks? */
SELECT salary, perks
FROM employee_data
WHERE perks > 16000;

/* 5. ﻿﻿﻿List all employee names (last name followed by first name) who hold the title of Marketing Executive. */
SELECT l_name, f_name
FROM employee_data
WHERE title = "Marketing Executive";
