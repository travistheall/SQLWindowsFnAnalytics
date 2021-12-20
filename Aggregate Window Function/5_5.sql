-- Exercise 5.5: Total Salary for each department and
-- order by the hire date. Call the new column running_total
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(
	PARTITION BY department
	ORDER BY hire_date
) AS running_total
FROM employees;