-- 11 How does revenue change year over year?
SELECT
    EXTRACT(YEAR FROM invoice_date) AS year,
    ROUND(SUM(order_value)::NUMERIC, 2) AS yearly_revenue
FROM ecom_clean
GROUP BY year
ORDER BY year;
