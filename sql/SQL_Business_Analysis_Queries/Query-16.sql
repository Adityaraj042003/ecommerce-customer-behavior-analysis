-- 12 What percentage of total revenue does each category contribute?
SELECT
    major_category,
    ROUND(
        (SUM(order_value) * 100.0 / SUM(SUM(order_value)) OVER ())::NUMERIC,
        2
    ) AS revenue_percentage
FROM ecom_clean
GROUP BY major_category
ORDER BY revenue_percentage DESC;
