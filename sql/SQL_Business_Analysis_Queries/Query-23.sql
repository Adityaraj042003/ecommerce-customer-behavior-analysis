 -- 19 Which invoices have unusually high order values (outlier detection)?
 WITH invoice_totals AS (
    SELECT
        invoice_no,
        SUM(order_value) AS invoice_total_value
    FROM ecom_clean
    GROUP BY invoice_no
),
stats AS (
    SELECT
        AVG(invoice_total_value) AS avg_value,
        STDDEV(invoice_total_value) AS stddev_value
    FROM invoice_totals
)
SELECT
    i.invoice_no,
    ROUND(i.invoice_total_value::NUMERIC, 2) AS invoice_total_value,
    ROUND(s.avg_value::NUMERIC, 2) AS average_invoice_value,
    ROUND((s.avg_value + 3 * s.stddev_value)::NUMERIC, 2)
        AS outlier_threshold
FROM invoice_totals i
CROSS JOIN stats s
WHERE i.invoice_total_value > (s.avg_value + 3 * s.stddev_value)
ORDER BY invoice_total_value DESC;
