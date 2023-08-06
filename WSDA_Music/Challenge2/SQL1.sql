
--Challenge 2
--  Get a list of customers who made purchases between 2011 and 2012.
SELECT 
Customer.FirstName || ' ' || Customer.LastName AS 'Customer'
FROM 
Invoice
JOIN 
Customer
ON 
Invoice.CustomerId=Customer.CustomerId
WHERE 
Invoice.InvoiceDate LIKE '2011%' or Invoice.InvoiceDate LIKE '2012%'