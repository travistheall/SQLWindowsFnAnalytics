-- Exercise 3.3: Retrieve the hire_date. Return details of
-- employees hired on or before 31st Dec, 2005 and are in
-- First Aid, Movies and Computers departments
SELECT first_name, email, department, salary, hire_date,
RANK() OVER(
	PARTITION BY department
	ORDER BY salary DESC
)
FROM employees
WHERE
	hire_date <= '2005-12-31' AND
	department IN ('First Aid', 'Movies', 'Computers');