-- 6 How does monthly revenue trend over time?
 SELECT
    year_month,
    ROUND(SUM(order_value)::NUMERIC, 2) AS monthly_revenue
FROM ecom_clean
GROUP BY year_month
ORDER BY year_month;
