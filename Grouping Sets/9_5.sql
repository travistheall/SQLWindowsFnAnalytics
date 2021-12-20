--9.5: Use the ROLLUP clause
--INDIVIDUAL
SELECT ship_mode, SUM(quantity)
FROM sales
GROUP BY ROLLUP (ship_mode);
--ETC..
--ALL TOGETHER
SELECT
	ship_mode,
	category,
	sub_category,
	SUM(quantity) AS summed_quantity
FROM sales
GROUP BY ROLLUP (ship_mode, category, sub_category);