--8️ What is the revenue contribution of each major product category?
SELECT
    major_category,
    ROUND(SUM(order_value)::NUMERIC, 2) AS revenue
FROM ecom_clean
GROUP BY major_category
ORDER BY revenue DESC;
