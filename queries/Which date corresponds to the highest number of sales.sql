SELECT TOP 1 datesold AS date, COUNT(*) AS number_of_sales
FROM raw_sales
GROUP BY datesold
ORDER BY number_of_sales DESC