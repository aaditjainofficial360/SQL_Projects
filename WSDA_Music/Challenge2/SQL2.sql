--Challenge 2
--  Get a list of customers, sales reps, and total transaction amounts for each customer 
--  between 2011 and 2012.

SELECT
Customer.FirstName || ' ' || Customer.LastName AS 'Customer',
(Employee.FirstName || ' '
|| Employee.LastName) AS 'Sales Representative',
Invoice.Total
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