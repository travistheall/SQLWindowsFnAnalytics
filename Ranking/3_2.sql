-- 3.2: Let's use the RANK() function
SELECT first_name, email, department, salary,
rank() OVER(
	PARTITION BY department
	ORDER BY salary DESC
)
FROM employees;