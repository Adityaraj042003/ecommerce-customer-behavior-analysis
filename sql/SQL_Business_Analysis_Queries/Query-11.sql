--7️⃣ Which country contributes the highest revenue?
SELECT
    country,
    ROUND(SUM(order_value)::NUMERIC, 2) AS revenue
FROM ecom_clean
GROUP BY country
ORDER BY revenue DESC;
