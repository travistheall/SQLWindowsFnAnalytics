-- Create a common table expression to retrieve the customer_id, 
-- ship_mode, and how many times the customer has purchased from the mall
WITH purchase_count AS (
    SELECT customer_id, ship_mode, COUNT(sales) AS purchase
    FROM sales
    GROUP BY customer_id, ship_mode
    ORDER BY purchase DESC
)
-- Exercise 6.2: Calculate the cumulative sum of customers purchase
-- for the different ship mode
SELECT customer_id, ship_mode, purchase, 
Sum(purchase) OVER(
	Partition by customer_id, ship_mode
	ORDER BY customer_id
) AS sum_of_sales
FROM purchase_count;