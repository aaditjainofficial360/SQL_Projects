-- Challenge 3
--  Create a Commission Payout column that displays each employee’s commission 
--  based on 15% of the sales transaction amount.

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