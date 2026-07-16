SELECT TOP 1 postcode, AVG(price) AS avg_price
FROM raw_sales
GROUP BY postcode
ORDER BY AVG(price) DESC
