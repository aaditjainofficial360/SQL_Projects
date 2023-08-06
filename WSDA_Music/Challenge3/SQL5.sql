-- Challenge 3
-- Which customer made the highest purchase? Jane Peacock

SELECT
Employee.FirstName || ' ' || Employee.LastName AS 'Customers',
Invoice.Total AS 'Total Money Spent'
FROM
Invoice
JOIN
Customer
ON
Invoice.CustomerId=Customer.CustomerId
JOIN
Employee
ON
Customer.SupportRepId=Employee.EmployeeId
ORDER BY 
Invoice.Total DESC
LIMIT 1