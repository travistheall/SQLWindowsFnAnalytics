-- 5.1: This returns how many employees are in each department
SELECT department, COUNT(*) AS dept_count
FROM employees
GROUP BY department
ORDER BY department;