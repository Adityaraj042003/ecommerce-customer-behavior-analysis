ALTER TABLE ecom_clean
ALTER COLUMN invoice_time TYPE TIME
USING invoice_time::TIME;
