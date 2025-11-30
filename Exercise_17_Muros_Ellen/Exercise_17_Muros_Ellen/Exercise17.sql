USE employees;
/*1. ﻿﻿﻿Find and list the ids and spouse names of all employees who are married.*/
SELECT e_id, s_name
FROM employee_per
WHERE m_status = 'Y';

/*2. ﻿﻿﻿Change the above so that the display is sorted on spouse names.*/ 
SELECT e_id, s_name
FROM employee_per
WHERE m_status = 'Y'
ORDER BY s_name;

/*3. ﻿﻿﻿How many employees do we have under each sex (male and female)?*/
SELECT sex, COUNT(*) AS total
FROM employee_per
GROUP BY sex;

/*4. ﻿﻿﻿How many of our employees are married and unmarried?*/
SELECT m_status, COUNT(*) AS total
FROM employee_per
GROUP BY m_status;

/*5. ﻿﻿﻿Find the total number of children.*/
SELECT SUM(children) AS total_children
FROM employee_per;

/*6. ﻿﻿﻿Make unique groups of children and find the number in each group. Sort the display with the group having maximum children, at the top.*/
SELECT children AS child_count,
       COUNT(*) AS total_employees
FROM employee_per
WHERE children IS NOT NULL
GROUP BY children
ORDER BY total_employees DESC;