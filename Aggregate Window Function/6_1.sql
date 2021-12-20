-- Retrieve the different region ids
SELECT DISTINCT region_id
FROM employees;

-- 6.1: Retrieve the first names, department and 
-- number of employees working in that department and region
SELECT first_name, department,
COUNT(*) OVER (
    PARTITION BY department, region_id
	ORDER BY region_id
) AS dept_count
FROM employees;

-- Exercise 6.1: Retrieve the first names, department and 
-- number of employees working in that department and in region 2
SELECT first_name, department, 
COUNT(*) OVER (
    PARTITION BY department, region_id
	ORDER BY region_id
) AS dept_count
FROM employees
WHERE region_id = 2;