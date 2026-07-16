/* # making sure all postal codes have 4 characters */

SELECT 
    LENGTH(CAST(postcode AS TEXT)) AS number_characters,
    COUNT(*) AS n_postal_codes
FROM 
    raw_sales
GROUP BY 
    LENGTH(CAST(postcode AS TEXT))
ORDER BY 
    number_characters;