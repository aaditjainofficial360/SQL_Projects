-- Challenge 1
--  How many transactions took place between the years 2011 and 2012?

SELECT COUNT(*) FROM INVOICE WHERE InvoiceDate LIKE '2011%' OR InvoiceDate LIKE '2012%'