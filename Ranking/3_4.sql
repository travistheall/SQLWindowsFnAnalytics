-- This returns how many employees are in each department
SELECT department, COUNT(*) dept_count
FROM employees
GROUP BY department
ORDER BY dept_count DESC;
-- 3.4: Return the fifth ranked salary for each department
Select *
From(
	SELECT
		first_name,
		department,
		salary,
		RANK() OVER w as rank,
		ROW_NUMBER() OVER w
	FROM employees
	WINDOW w AS (PARTITION BY department ORDER BY salary DESC)
) as t
WHERE rank = 5;