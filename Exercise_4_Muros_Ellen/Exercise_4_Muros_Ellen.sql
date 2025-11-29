Use employees;
/* 1. ﻿﻿﻿List the first and last names of all employees who draw less than or equal to $90000 and are not Programmes, Senior programmers or Multimedia programmers. */
SELECT f_name, l_name
FROM employee_data
WHERE salary <= 90000
  AND title NOT LIKE "%Programmer%";

/* 2. What is displayed by the following statement?*/
SELECT l_name f_name from employee_data where title NOT LIKE '%marketing%' AND age < 30;

/* 3. List all ids and names of all employees between 32 and 40 years of age. */
SELECT emp_id, f_name, l_name
FROM employee_data
WHERE age BETWEEN 32 AND 40;

/* 4. ﻿﻿﻿Select names of all employees who are 32 years of age and are not programmers. */
SELECT f_name, l_name
FROM employee_data
WHERE age = 32
  AND title NOT LIKE "%Programmer%";
