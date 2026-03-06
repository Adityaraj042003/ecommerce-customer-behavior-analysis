--14 Identify high-value vs low-value orders based on order value.
SELECT
    CASE
        WHEN order_value >= 100 THEN 'High Value'
        ELSE 'Low Value'
    END AS order_type,
    COUNT(*) AS total_orders
FROM ecom_clean
GROUP BY order_type;
