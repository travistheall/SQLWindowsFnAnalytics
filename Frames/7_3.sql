-- 7.3: Find the running average
select first_name, hire_date, salary, avg(salary) over(order by hire_date) as AvgSalary
from employees
order by hire_date;