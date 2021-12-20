/*
  When a query involves multiple window functions,
  it is possible to write out each one with a
  separate OVER clause, but this is duplicative
  and error-prone if the same windowing behavior
  is wanted for several functions. Instead,
  each windowing behavior can be named in a
  WINDOW clause and then referenced in OVER.
*/
SELECT sum(salary) OVER w, avg(salary) OVER w
  FROM employees
  WINDOW w AS (PARTITION BY department ORDER BY salary DESC);