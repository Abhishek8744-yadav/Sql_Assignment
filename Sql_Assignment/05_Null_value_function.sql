-- # NULL VALUE FUNCTIONS – 20 Questions
SELECT * from orders;
-- 1. Replace NULL price with 0.
SELECT NVL(unit_price, 0) FROM ORDERS;

-- 2. Replace NULL Customer_Name with 'Unknown'.
SELECT Customer_Name,COALESCE(Customer_Name, 'Unknown')FROM orders;

-- 3. Count NULL values in Product_Name.
SELECT COUNT(*) FROM ORDERS WHERE Product_Name IS NULL;

-- 4. Find rows where Order_Date is NULL.
SELECT count(*) from orders where ORDER_DATE is null;

-- 5. Use COALESCE to return first non-null value.
SELECT customer_name,COALESCE(customer_name,'No-null') from orders;

-- 6. Use NVL to replace NULL values.
SELECT NVL(unit_price, 0) FROM ORDERS;

-- 7. Use IFNULL function.
SELECT IFNULL(product_name,'null_values') from orders; 

-- 8. Check if column is NULL.
SELECT * FROM ORDERS WHERE product_name IS NULL;

-- 9. Check if column is NOT NULL.
SELECT * FROM ORDERS WHERE PRODUCT_CATEGORY IS NULL;

-- 10. Use NULLIF between two columns.
SELECT NULLIF(PRODUCT_NAME, PRODUCT_CATEGORY) FROM orders;

-- If actual_price is the same as list_price, return NULL

-- 11. Replace blank values with NULL.

-- 12. Count non-null values.
SELECT COUNT(Product_Name) FROM ORDERS WHERE Product_Name IS NOT NULL;

-- 13. Filter records where price is NULL or 0
SELECT COUNT(UNIT_PRICE) FROM ORDERS WHERE UNIT_PRICE IS NULL OR 0;

-- 14. Use CASE to handle NULL values.
SELECT ORDER_ID,CASE WHEN PRODUCT_NAME IS NULL THEN 'No Product Assigned' ELSE PRODUCT_NAME END AS PRODUCT_DISPLAY FROM ORDERS;

-- 15. Compare NULL values properly.
SELECT * FROM ORDERS WHERE PRODUCT_NAME IS NULL;

-- 16. Handle NULL in aggregation.

-- 17. Find average excluding NULL values.
SELECT AVG(unit_price) AS average_price FROM ORDERS;

-- 18. Find sum ignoring NULL values.
SELECT SUM(unit_price) AS SUM_PRICE FROM ORDERS;

-- 19. Identify columns containing NULL using metadata.

-- 20. Convert NULL to default system date.
SELECT NVL(order_date, SYSDATE) FROM orders;