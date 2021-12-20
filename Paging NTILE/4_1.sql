-- Task Four: Paging: NTILE()
-- In this task, we will learn how break/page
-- the result set into groups

-- 4.1: Group the employees table into five groups
-- based on the order of their salaries
SELECT first_name, email, department, salary,
NTILE(5) OVER(ORDER BY salary DESC)
FROM employees;
 /*
     Splits query into 5 seperate groups
 */
