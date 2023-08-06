-- Challenge 2
--  How many transactions are above the average transaction amount during the same 
--  time period?

SELECT 
COUNT(*) AS 'Total_Transactions_Above_Average'
FROM 
Invoice
WHERE 
total > (SELECT AVG(total) FROM Invoice)
AND
InvoiceDate LIKE '2011%' OR InvoiceDate LIKE '2012%'