-- Create a common table expression to retrieve the customer_id,
-- and how many times the customer has purchased from the mall
WITH purchase_count AS (
    SELECT customer_id, COUNT(sales) AS purchase
    FROM sales
    GROUP BY customer_id
    ORDER BY purchase DESC
)
-- 3.5: Understand the difference between ROW_NUMBER, RANK, DENSE_RANK
SELECT 
    customer_id,
    purchase,
    ROW_NUMBER() OVER (ORDER BY purchase DESC) AS Row_N,
    RANK() OVER (ORDER BY purchase DESC) AS Rank_N,
    DENSE_RANK() OVER (ORDER BY purchase DESC) AS Dense_Rank_N
FROM purchase_count
ORDER BY purchase DESC;
/*
ROW_NUMBER:
- the rank 1 through N with no regards to duplicate numbers
ex: 1,2,3,4,5,6,7,8,9,......

RANK:
- the rank 1 through N where duplicate numbers are tied,
- but the next number is the row number
ex: 1,2,2,2,5,5,5,5,9,....

DENSE_RANK:
- the rank 1 through N where duplicate numbers are tied,
- but the next number is the next in series
ex: 1,2,2,2,3,3,3,3,4,.....
*/