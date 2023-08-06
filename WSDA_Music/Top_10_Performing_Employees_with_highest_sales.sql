--TOP PERFORMING EMPLOYEES WITH HIGHEST SALES IN TOTAL 


SELECT 
Employee.FirstName,
Employee.LastName,
Employee.Title,
Invoice.total
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
ORDER BY Invoice.Total DESC 
LIMIT 10
