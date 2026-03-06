
WITH category_yearly_revenue AS (
    SELECT
        major_category,
        EXTRACT(YEAR FROM invoice_date) AS year,
        SUM(order_value) AS revenue
    FROM ecom_clean
    GROUP BY major_category, year
),
category_trend AS (
    SELECT
        major_category,
        year,
        revenue,
        revenue - LAG(revenue) OVER (
            PARTITION BY major_category
            ORDER BY year
        ) AS revenue_change
    FROM category_yearly_revenue
)
SELECT
    major_category,
    year,
    ROUND(revenue::NUMERIC, 2) AS revenue,
    ROUND(revenue_change::NUMERIC, 2) AS revenue_change
FROM category_trend
WHERE revenue_change < 0
ORDER BY major_category, year;
