-- 7.1: Calculate the running total of salary
-- Retrieve the first_name, hire_date, salary
-- of all employees ordered by the hire date
SELECT first_name, hire_date, salary
FROM employees
ORDER BY hire_date;

-- The solution
SELECT first_name, hire_date, salary,
ROW_NUMBER() OVER (salary) AS Row_N
FROM employees;