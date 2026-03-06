SELECT invoice_no, unit_price, quantity, order_value, country,
       invoice_date, invoice_time, year_month,
       major_category, minor_category, description,
       COUNT(*) AS duplicate_count
FROM ecom_clean
GROUP BY invoice_no, unit_price, quantity, order_value, country,
         invoice_date, invoice_time, year_month,
         major_category, minor_category, description
HAVING COUNT(*) > 1;