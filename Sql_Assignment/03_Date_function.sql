-- # DATE FUNCTIONS – 20 Questions
Select * from ORDERS;

desc orders;
-- 1. Extract year from Order_Date.
Select extract(year from order_date) from ORDERS;

-- 2. Extract month from Order_Date.
select extract(month from order_date) from ORDERS;

-- 3. Extract day from Order_Date.
select extract(day from order_date) from orders;

-- 4. Find current date.
select sysdate from dual;

-- 5. Find current timestamp.
select SYStimestamp from dual;

-- 6. Add 7 days to Order_Date.
select order_date,7+order_date from orders;

-- 7. Subtract 30 days from Order_Date.
select order_date -30 from orders;

-- 8. Find difference between two dates.
select round(sysdate - order_date,2) from orders;

-- 9. Find number of months between two dates.
SELECT round(sysdate-ORDER_DATE,2) from orders;

-- 10. Find last day of the month.
select last_day(ORDER_DATE) from orders;

-- 11. Get first day of the year.
select trunc(sysdate,'year') from orders;

-- 12. Format date as 'DD-MM-YYYY'.
select to_date(order_date,'dd-mm-yyyy') from orders;

-- 13. Convert string to date.
select to_date('2006-08-04','yyyy-mm-dd') from orders;

-- 14. Convert date to string.
select to_char(sysdate) from orders;

-- 15. Find week number of the year.
select to_char(sysdate,'ww') from orders;
-- 16. Find day name from date.
select to_char(sysdate,'day') from orders;
-- 17. Find quarter of the year.
select to_char(sysdate, 'Q') AS current_quarter from orders;
-- 18. Calculate age from DOB.
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, to_DATE ('2004-04-08','yyyy-mm-dd')) / 12) AS years_old FROM DUAL;

-- 19. Check if date is weekend.
SELECT CASE WHEN TO_CHAR(order_date, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') IN ('SAT', 'SUN') THEN 'Weekend' ELSE 'Weekday' END AS Type_Day FROM ORDERS;

-- 20. Find next Monday after a given date.
Select next_day(order_date,'Monday') from ORDERS;