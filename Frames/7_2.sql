-- 7.2: Add the current row and previous row
with cte as (
	select first_name, hire_date, salary, sum(salary) over(order by hire_date) as RunningTotal
	from employees
)
select
	first_name,
	hire_date,
	salary,
	lag(RunningTotal,1, 0) over(order by hire_date) as Prev_total,
	RunningTotal
from cte;