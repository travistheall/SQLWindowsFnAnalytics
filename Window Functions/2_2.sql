/*
Window functions are permitted only in the

1) SELECT list and the
2) ORDER BY clause of the query.

They are forbidden elsewhere, such as in

1) GROUP BY,
2) HAVING and
3) WHERE clauses.

This is because they logically execute after
the processing of those clauses. Also, window functions execute after
regular aggregate functions. This means it is valid to include an
aggregate function call in the arguments of a window function,
but not vice versa.

If there is a need to filter or group rows after the window calculations are
performed, you can use a sub-select.
 */

-- 2.2: Retrieve the employee_id, first_name,
-- hire_date of employees for different departments
SELECT t.employee_id, t.first_name, t.department, t.hire_date, t.Row_N
FROM (
	SELECT e.employee_id, e.first_name, e.department, e.hire_date,
	ROW_NUMBER() OVER (ORDER BY hire_date) AS Row_N
	FROM employees as e
) as t
WHERE t.department = 'Sports';
