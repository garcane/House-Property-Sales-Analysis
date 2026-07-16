SELECT EXTRACT(YEAR FROM datesold) AS year, COUNT(*) AS total_sales, SUM(price) AS total_value
FROM raw_sales
GROUP BY EXTRACT(YEAR FROM datesold)
ORDER BY year;