-- 8.1: Review of the FIRST_VALUE() function
SELECT department, division,
FIRST_VALUE(department) OVER(ORDER BY department) first_department
FROM departments;