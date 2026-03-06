 -- How does average order value vary by country?
 SELECT
    country,
    COUNT(DISTINCT invoice_no) AS total_orders,
    ROUND(SUM(order_value)::NUMERIC, 2) AS total_revenue,
    ROUND(
        (SUM(order_value) / COUNT(DISTINCT invoice_no))::NUMERIC,
        2
    ) AS avg_order_value
FROM ecom_clean
GROUP BY country
ORDER BY avg_order_value DESC;
