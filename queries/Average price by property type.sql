SELECT propertyType, AVG(price) AS avg_price, COUNT(*) AS num_sales
FROM raw_sales
GROUP BY propertyType
ORDER BY avg_price DESC;