
/*Top 10 Houses sold at the hightest price sold at 500,000*/
SELECT * FROM raw_sales
WHERE price >= 5000000
ORDER BY price desc
LIMIT 10
