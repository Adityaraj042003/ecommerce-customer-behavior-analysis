-- 5 What is the average order value (AOV)?

SELECT
    ROUND(
        (SUM(order_value) / COUNT(DISTINCT invoice_no))::NUMERIC,
        2
    ) AS avg_order_value
FROM ecom_clean;
