-- 7.4: What do you think the result of the query will be?
SELECT first_name, hire_date, salary,
SUM(salary) OVER(ORDER BY hire_date 
				 ROWS BETWEEN
				 3 PRECEDING AND CURRENT ROW) AS running_total
FROM employees;
-- Answer: Moving total of the salary for the current row and 3 rows after it.
