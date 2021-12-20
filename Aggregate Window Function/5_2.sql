-- 5.2: Retrieve the first names, department and 
-- number of employees working in that department
SELECT e2.first_name, e2.department, (
    SELECT COUNT(*) AS dept_count
    FROM employees e1
    WHERE e1.department = e2.department
)
FROM employees e2
GROUP BY e2.department, e2.first_name
ORDER BY e2.department;

-- The solution as window function
SELECT first_name, department, COUNT(*) OVER(
	PARTITION BY department
	ORDER BY department
) AS dept_count
FROM employees ;