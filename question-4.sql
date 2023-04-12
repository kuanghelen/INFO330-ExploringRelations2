-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName, SUM(i.total) AS Sales
FROM invoices AS i, customers AS c, employees AS e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND i.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY e.FirstName, e.LastName, e.EmployeeId
ORDER BY SUM(i.total) DESC
LIMIT 1;