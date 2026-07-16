/* some observations had the value 0 in bedrooms so I decided to take a look at those */
SELECT datesold, propertyType, bedrooms, COUNT (bedrooms) AS properties_without_bedrooms
FROM raw_sales
WHERE bedrooms = 0
GROUP BY datesold, propertyType, bedrooms;

