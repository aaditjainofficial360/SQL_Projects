-- Challenge 3
--  Get a list of employees who exceeded the average transaction amount from sales they 
--  generated during 2011 and 2012.

SELECT
DISTINCT(Employee.FirstName || ' ' || Employee.LastName) AS 'Sales Represtative'
FROM
Invoice
JOIN
Customer
ON Invoice.CustomerId=Customer.CustomerId
JOIN
Employee
ON
Customer.SupportRepId=Employee.EmployeeId
WHERE
Invoice.Total>(SELECT AVG(Total) FROM Invoice)
AND (InvoiceDate LIKE '2011%' OR InvoiceDate LIKE '2012%')
