-- First query: Create a temporary table with ranked sales by year and postcode
SELECT 
    EXTRACT(YEAR FROM datesold) AS year, 
    postcode, 
    price,
    dense_rank() OVER (PARTITION BY EXTRACT(YEAR FROM datesold) ORDER BY price DESC) AS rnk
INTO TEMPORARY TABLE sales2
FROM raw_sales;

-- Second query: Get the top 6 postcodes by price for each year
SELECT 
    r.year, 
    r.postcode, 
    r.price
FROM (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY year ORDER BY price DESC) AS row_num
    FROM sales2
    WHERE rnk = 1
) r
WHERE r.row_num BETWEEN 1 AND 6
ORDER BY r.year, r.row_num;