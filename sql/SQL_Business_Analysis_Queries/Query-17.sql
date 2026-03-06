-- 13 At what time of day are most orders placed?
SELECT
    EXTRACT(HOUR FROM invoice_time) AS hour,
    COUNT(*) AS total_orders
FROM ecom_clean
GROUP BY hour
ORDER BY total_orders DESC;
