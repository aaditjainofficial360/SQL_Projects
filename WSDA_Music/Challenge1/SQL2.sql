-- Challenge 1
-- How much money did WSDA Music make during the same period?


SELECT SUM(TOTAL) AS 'TOTAL MONEY' FROM Invoice WHERE InvoiceDate LIKE '2011%' OR InvoiceDate LIKE '2012%'