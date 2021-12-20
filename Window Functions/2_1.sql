-- 2.1: Retrieve a list of employee_id, first_name, hire_date, 
-- and department of all employees ordered by the hire date
SELECT employee_id, first_name, department, hire_date,
ROW_NUMBER() OVER (ORDER BY hire_date) AS Row_N
FROM employees;