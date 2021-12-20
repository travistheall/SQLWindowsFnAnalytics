-- 5.4: Total Salary for each department
Select Distinct department, sum(salary) over (
    partition by department
    order by department
) as dept_salary_total
FROM employees;