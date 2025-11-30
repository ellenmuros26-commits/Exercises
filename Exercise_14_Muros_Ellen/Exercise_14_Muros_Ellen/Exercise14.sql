Use employees;
SET SQL_SAFE_UPDATES = 0;

/*1. ﻿﻿﻿Our CEO falls in love with the petite Web Developer, Anamika Pandit. She now wants her last name to be changed to 'Sharma'.*/
UPDATE employee_data
SET l_name = 'Sharma'
WHERE f_name = 'Anamika' AND l_name = 'Pandit';

/* Verify */
SELECT f_name, l_name, title FROM employee_data
WHERE f_name = 'Anamika';

/* 2. ﻿﻿﻿All Multimedia Programmers now want to be called Multimedia Specialists.*/
UPDATE employee_data
SET title = 'Multimedia Specialist'
WHERE title = 'Multimedia Programmer';

/* Verify */
SELECT f_name, l_name, title FROM employee_data
WHERE title = 'Multimedia Specialist';

/*3. ﻿﻿﻿After his marriage, the CEO gives everyone a raise. Increase the salaries of all employees (except the CEO) by $10000.*/
UPDATE employee_data
SET salary = salary + 10000
WHERE title != 'CEO';

/* Verify — show the CEO and 5 sample others */
SELECT f_name, l_name, title, salary FROM employee_data
ORDER BY title, f_name
LIMIT 25;