DROP TABLE IF EXISTS ecom_clean;

CREATE TABLE ecom_clean AS
SELECT
    "InvoiceNo"      AS invoice_no,
    "UnitPrice"      AS unit_price,
    "OrderValue"     AS order_value,
    "Quantity"       AS quantity,
    "Country"        AS country,
    TO_DATE("InvoiceDate", 'DD/MM/YY') AS invoice_date,
    "InvoiceTime"    AS invoice_time,
    "Year-Month"     AS year_month,
    "Major Category" AS major_category,
    "Minor Category" AS minor_category,
    "Description"    AS description
FROM my_table;