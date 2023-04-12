-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM invoices AS i, customers AS c
WHERE i.CustomerId = c.CustomerId
AND c.Country = 'Brazil';