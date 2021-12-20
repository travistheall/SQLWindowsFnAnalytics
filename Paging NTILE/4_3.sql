-- Create a CTE that returns details of an employee
-- and group the employees into five groups
-- based on the order of their salaries
WITH salary_ranks AS (
    SELECT first_name, email, department, salary,
    NTILE(5) OVER(ORDER BY salary DESC) AS rank_of_salary
    FROM employees
)
-- 4.3: Find the average salary for each group of employees
SELECT AVG(salary), rank_of_salary
FROM salary_ranks
GROUP BY rank_of_salary;