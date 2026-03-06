
WITH country_revenue AS (
    SELECT
        country,
        SUM(order_value) AS revenue
    FROM ecom_clean
    GROUP BY country
),
pareto_calculation AS (
    SELECT
        country,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM country_revenue
)
SELECT
    country,
    ROUND(revenue::NUMERIC, 2) AS country_revenue,
    ROUND(cumulative_revenue::NUMERIC, 2) AS cumulative_revenue,
    ROUND((cumulative_revenue / total_revenue * 100)::NUMERIC, 2)
        AS cumulative_revenue_percentage,
    CASE
        WHEN (cumulative_revenue / total_revenue) <= 0.80
        THEN 'Top 80% Revenue Countries'
        ELSE 'Remaining 20%'
    END AS pareto_category
FROM pareto_calculation
ORDER BY country_revenue DESC;
