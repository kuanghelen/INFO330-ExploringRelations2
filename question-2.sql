-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName, e.LastName, i.*
FROM employees AS e, customers AS c, invoices AS i
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent';