-- 10 Which products generate high quantity sales but low revenue?
SELECT
    description,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(order_value)::NUMERIC, 2) AS revenue
FROM ecom_clean
GROUP BY description
ORDER BY total_quantity DESC, revenue ASC
limit 20