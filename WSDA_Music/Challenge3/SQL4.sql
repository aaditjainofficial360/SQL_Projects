-- Challenge 3
-- List the customers that the employee identified in the last question.

SELECT
DISTINCT(Customer.FirstName || ' ' || Customer.LastName) AS 'Customers'
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
