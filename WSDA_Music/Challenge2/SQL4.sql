-- Challenge 2
-- What is the average transaction amount for each year that WSDA Music has been 
-- in business?

SELECT 
SUBSTR(InvoiceDate,1,4) AS 'YEAR',
AVG(total) AS 'Average Transaction Amount'
FROM
Invoice
GROUP BY
YEAR