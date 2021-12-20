-- 3.1: Recall the use of ROW_NUMBER()
SELECT first_name, email, department, salary,
ROW_NUMBER() OVER(
    PARTITION BY department
	  ORDER BY salary DESC
)
FROM employees;