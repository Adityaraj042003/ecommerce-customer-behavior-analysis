 -- 9 What are the top 10 best-selling products by quantity?
 SELECT
    description,
    SUM(quantity) AS total_units_sold
FROM ecom_clean
GROUP BY description
ORDER BY total_units_sold DESC
LIMIT 10;
