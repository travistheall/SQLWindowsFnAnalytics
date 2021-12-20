-- 8.3: Create a common table expression to retrieve the customer_id,
-- ship_mode, and how many times the customer has purchased from the mall
WITH purchase_count AS (
    SELECT customer_id, COUNT(sales) AS purchase
    FROM sales
    GROUP BY customer_id
    ORDER BY purchase DESC
)

-- What do you think this will return?
SELECT customer_id, purchase, 
MAX(purchase) OVER(ORDER BY customer_id) AS max_of_sales,
MAX(purchase) OVER(ORDER BY customer_id
				  ROWS BETWEEN
				  CURRENT ROW AND 1 FOLLOWING) AS next_max_of_sales
FROM purchase_count;
/*
* Answer:
* Max of sales = the absolute max for the dataset
* Next max of sales = the max sales between the current customer and the next
*/