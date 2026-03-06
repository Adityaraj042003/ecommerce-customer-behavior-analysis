-- 2️⃣ How many unique orders have been placed?
SELECT
    COUNT(DISTINCT invoice_no) AS total_orders
FROM ecom_clean;
