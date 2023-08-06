-- Challenge 3
-- Which employee made the highest commission? Jane Peacock


SELECT
Employee.FirstName || ' ' || Employee.LastName AS 'Sales Representative',
(Invoice.Total*0.15) AS 'Commission Payout'
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
GROUP BY
Employee.EmployeeId
LIMIT 1