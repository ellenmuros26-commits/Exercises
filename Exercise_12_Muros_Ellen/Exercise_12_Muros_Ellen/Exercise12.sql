use addressbook;

/*1. List departments and average ages where the average age in more than 30.*/
SELECT title, AVG(age) AS avg_age
FROM employee_data
GROUP BY title
HAVING AVG(age) > 30;