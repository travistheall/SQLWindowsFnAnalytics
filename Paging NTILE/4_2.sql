-- 4.2: Group the employees table into five groups for 
-- each department based on the order of their salaries
SELECT first_name, email, department, salary,
NTILE(5) OVER(
    PARTITION BY department
	ORDER BY salary DESC
)
FROM employees;