--1️5 Which products show consistent demand across multiple months?
SELECT
    description,
    COUNT(DISTINCT year_month) AS active_months
FROM ecom_clean
GROUP BY description
HAVING COUNT(DISTINCT year_month) >= 6
ORDER BY active_months DESC;
