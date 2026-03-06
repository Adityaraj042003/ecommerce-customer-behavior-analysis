SELECT invoice_no, COUNT(*) AS duplicate_count
FROM ecom_clean
GROUP BY invoice_no
HAVING COUNT(*) > 1;