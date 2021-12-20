--9.6: Use the CUBE clause
--INDIVIDUAL
SELECT
    COALESCE(ship_mode, 'AllShipping') as ship_mode,
	SUM(quantity) AS summed_quantity
FROM sales
GROUP BY CUBE(ship_mode)
ORDER BY summed_quantity DESC;
--ETC...
--ALL TOGETHER
SELECT
    COALESCE(ship_mode, 'AllShipping') as ship_mode,
	COALESCE(category, 'AllCategories') as category,
	COALESCE(sub_category, 'AllSubCategories') as sub_category,
	SUM(quantity) AS summed_quantity
FROM sales
GROUP BY CUBE (
  ship_mode,
  category,
  sub_category
)
ORDER BY summed_quantity DESC;