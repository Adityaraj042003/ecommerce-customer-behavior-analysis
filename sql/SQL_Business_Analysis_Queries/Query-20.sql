
SELECT
    year,
    description,
    revenue
FROM (
    SELECT
        EXTRACT(YEAR FROM invoice_date) AS year,
        description,
        ROUND(SUM(order_value)::NUMERIC, 2) AS revenue,
        RANK() OVER (
            PARTITION BY EXTRACT(YEAR FROM invoice_date)
            ORDER BY SUM(order_value) DESC
        ) AS rank
    FROM ecom_clean
    GROUP BY year, description
) ranked_products
WHERE rank <= 5
ORDER BY year, rank;
