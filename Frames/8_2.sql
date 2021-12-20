-- 8.2: Retrieve the last department in the departments table
--example 1: using first value
SELECT department, division,
FIRST_VALUE(department) OVER(ORDER BY department DESC) last_department
FROM departments;

--example 2: using last value
SELECT department, division,
LAST_VALUE(department) OVER (
    ORDER BY department
	ROWS BETWEEN
		UNBOUNDED PRECEDING
		AND UNBOUNDED FOLLOWING
    ) as last_department
FROM departments;