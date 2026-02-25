-- # MATHEMATIC FUNCTIONS – 20 Questions
Select * from ORDERS;

-- 1. Find sine value of an angle.
Select ceil(sin(90)) from dual;

-- 2. Find cosine value of an angle.
Select ceil(cos(90)) from dual;

-- 3. Find tangent value.
select round(tan(90),2) from dual;

-- 4. Convert degrees to radians.
SELECT round(90 * (ACOS(-1) / 180),2) AS radians FROM dual;

-- 5. Convert radians to degrees.
Select round(1.57*(180/ACOS(-1)),2) as Degree from dual;

-- 6. Find logarithm (base 10) of a number.
SELECT LOG(10, 100) AS log_result FROM dual;

-- 7. Find natural log of a number.
SELECT round(LN(20),4) AS natural_log FROM dual;


-- 8. Find square of a number.
select power(10,2) as square_num from dual;

-- 9. Find cube of a number.
select power(10,3) as square_num from dual;

-- 10. Calculate factorial of a number.

-- 11. Find greatest value among three numbers.
Select greatest(12,45,78,98,54) as greatest_num from dual;

-- 12. Find least value among three numbers.
select least(12,45,78,98,54) as least_value from dual;

-- 13. Calculate variance of sales.
Select VARIANCE ( Unit_price*QUANTITY) from orders;

-- 14. Calculate standard deviation of sales.
Select STDDEV(unit_price) from ORDERS;

-- 15. Find average deviation.
 SELECT AVG(ABS(UNIT_PRICE - (SELECT AVG(UNIT_PRICE) FROM ORDERS))) FROM ORDERS;

-- 16. Calculate geometric mean.

-- 17. Calculate harmonic mean.

-- 18. Find sum of squares.
Select sum(power(unit_price,2)) from ORDERS;

-- 19. Calculate correlation between two columns.
Select corr(UNIT_PRICE,QUANTITY) from ORDERS;

-- 20. Calculate regression slope.
Select regr_slope(UNIT_PRICE,QUANTITY) from orders;