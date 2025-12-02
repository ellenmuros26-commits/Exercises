use addressbook;
/*1. ﻿﻿﻿List ids, birth dates and emails of employes born in April.*/
SELECT e_id, birth_date, p_email
FROM employee_per
WHERE MONTH(birth_date) = 4;

/*2. ﻿﻿﻿Display Ids, birth dates and spouse names of employees born in 1969 and sort the entires on the basis of their spouse names.*/
SELECT e_id, birth_date, s_name
FROM employee_per
WHERE YEAR(birth_date) = 1969
ORDER BY s_name;

/*3. ﻿﻿﻿List the emploee ids for employees born under the current month.*/ 
SELECT e_id
FROM employee_per
WHERE MONTH(birth_date) = MONTH(CURRENT_DATE);

/*4. ﻿﻿﻿How many unique birth years do we have?*/ 
SELECT COUNT(DISTINCT YEAR(birth_date)) AS unique_birth_years
FROM employee_per;

/*5. ﻿﻿﻿Display a list of unique birth years and the number of employees born under each.*/
SELECT YEAR(birth_date) AS birth_year,
       COUNT(*) AS total_employees
FROM employee_per
GROUP BY YEAR(birth_date)
ORDER BY birth_year;

/*6. ﻿﻿﻿How many employees were born under each month? The display should have month names (NOT numbers) and the entries should be sorted with the month having the largest number listed first.*/
SELECT 
    MONTHNAME(birth_date) AS month_name,
    COUNT(*) AS total_employees
FROM employee_per
GROUP BY MONTHNAME(birth_date)
ORDER BY total_employees DESC;

