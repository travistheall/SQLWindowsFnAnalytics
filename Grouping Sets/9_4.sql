-- 9.4: Use the GROUPING SETS clause
--INDIVIDUAL
SELECT
	GROUPING(ship_mode) ship_group, -- OPTIONAL
	ship_mode,
	SUM(quantity) AS summed_quantity
FROM sales
GROUP BY
    GROUPING SETS (
        (ship_mode),
        ()
    );
-- ETC...
-- ALL TOGETHER
SELECT
	GROUPING(ship_mode) ship_group, -- OPTIONAL
	GROUPING(category) category_group, -- OPTIONAL
	GROUPING(sub_category) sub_category_group, -- OPTIONAL
	ship_mode,
	category,
	sub_category,
	SUM(quantity) AS summed_quantity
FROM sales
GROUP BY
    GROUPING SETS (
        (ship_mode),
        (category),
        (sub_category),
        ()
    );