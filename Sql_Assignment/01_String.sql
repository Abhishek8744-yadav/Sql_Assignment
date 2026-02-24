CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Store_Location VARCHAR(100)
);


INSERT ALL
    INTO Orders VALUES (1001, TO_DATE('2026-02-01','YYYY-MM-DD'), 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore')
    INTO Orders VALUES (1002, TO_DATE('2026-02-02','YYYY-MM-DD'), 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad')
    INTO Orders VALUES (1003, TO_DATE('2026-02-03','YYYY-MM-DD'), 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai')
    INTO Orders VALUES (1004, TO_DATE('2026-02-04','YYYY-MM-DD'), 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai')
    INTO Orders VALUES (1005, TO_DATE('2026-02-05','YYYY-MM-DD'), 'C005', 'Kiran Rao', 'Home Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore')
    INTO Orders VALUES (1006, TO_DATE('2026-02-06','YYYY-MM-DD'), 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi')
    INTO Orders VALUES (1007, TO_DATE('2026-02-07','YYYY-MM-DD'), 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata')
    INTO Orders VALUES (1008, TO_DATE('2026-02-08','YYYY-MM-DD'), 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi')
    INTO Orders VALUES (1009, TO_DATE('2026-02-09','YYYY-MM-DD'), 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad')
    INTO Orders VALUES (1010, TO_DATE('2026-02-10','YYYY-MM-DD'), 'C010', 'Meena Iyer', 'Home  Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune')
SELECT * FROM DUAL;

COMMIT;

SELECT * FROM ORDERS;
-- 1. Write a query to convert all customer names to uppercase.

SELECT UPPER(CUSTOMER_NAME) as Customer_name_upper FROM ORDERS;

-- 2. Extract the first 5 characters from Product_Name.

SELECT substr(customer_name,1,5) FROM orders;

-- 3. Find the length of each Customer_Name.

SELECT length(customer_name) from orders;

-- 4. Replace the word "Rice" with "Premium Rice" in Product_Name.

select replace(product_name,'rice','premium rice') from orders; 

-- 5. Remove leading and trailing spaces from Customer_Name.

SELECT TRIM(customer_name) as trim_customer_name FROM ORDERS;

-- 6. Concatenate First_Name and Last_Name as Full_Name.

SELECT Product_Name || ' ' || Product_Category AS full_name FROM orders; 
-- There is no last name here so i added the product_name and product_category

-- 7. Find customers whose names start with 'A'.

SELECT * from orders where CUSTOMER_NAME like 'A%';

-- 8. Extract the domain name from Email_ID.

-- 9. Find the position of '@' in Email_ID.

-- 10. Reverse the Product_Name.

SELECT reverse(product_name) as revers from orders;

-- 11. Convert the first letter of each word in Product_Name to uppercase.

SELECT initcap(product_name) from orders; 

--12. Extract the last 3 characters from Order_ID.

SELECT substr(order_id,-3) from ORDERS;

--13.  Count how many times letter 'a' appears in Customer_Name.

SELECT count(customer_name,'a') from orders;

--14. Mask the last 4 digits of a phone number.

--15. Split Full_Name into First_Name and Last_Name.

--16. Remove all special characters from Product_Code.

--17. Compare two columns ignoring case sensitivity.

SELECT * from orders where upper(CUSTOMER_NAME) = UPPER(PRODUCT_NAME);

--18. Find customers whose name contains 'kumar'.

SELECT * from ORDERS where lower(CUSTOMER_NAME) like '%kumar%';

--19. Pad Order_ID with leading zeros to make it 6 digits.

SELECT lpad(order_id,6,'0') from orders;

--20. Extract substring between two characters.