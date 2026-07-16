SELECT bedrooms, MIN(price) AS min_price, MAX(price) AS max_price, AVG(price) AS avg_price, COUNT(*) AS count
FROM raw_sales
GROUP BY bedrooms
ORDER BY bedrooms;