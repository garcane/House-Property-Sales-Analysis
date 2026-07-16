SELECT EXTRACT(YEAR FROM datesold) AS year, COUNT(*) AS number_of_sales
FROM raw_sales
GROUP BY EXTRACT(YEAR FROM datesold)
ORDER BY number_of_sales ASC
LIMIT 1;