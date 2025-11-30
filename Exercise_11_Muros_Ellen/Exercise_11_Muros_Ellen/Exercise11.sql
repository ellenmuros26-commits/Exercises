Use employees;
/*1. Count the number of employees who have been with Bignet for four or more years.*/
SELECT COUNT(*) AS employees_with_4_or_more_years
FROM employee_data
WHERE yos >= 4;

/*2. Count employees based on their ages.*/
SELECT age, COUNT(*) AS num_employees
FROM employee_data
GROUP BY age;

/*3. Modify the above so that the ages are listed in a descending order.*/
SELECT age, COUNT(*) AS num_employees
FROM employee_data
GROUP BY age
ORDER BY age DESC;

/*4. Find the average age of employees in different departments (titles).*/
SELECT title, AVG(age) AS avg_age
FROM employee_data
GROUP BY title;

/*5. Change the above statement so that the data is displayed in a descending order of average ages.*/
SELECT title, AVG(age) AS avg_age
FROM employee_data
GROUP BY title
ORDER BY avg_age DESC;

/*6. Find and list the percentage perk (perk/salary X 100) for each employee with the % perks sorted in a descending order.*/
SELECT
  f_name,
  l_name,
  salary,
  perks,
  (perks / salary * 100) AS "Perk Percentage"
FROM employee_data
ORDER BY `Perk Percentage` DESC;