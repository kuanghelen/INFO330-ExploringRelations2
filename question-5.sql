-- What was the most purchased track of 2013?
SELECT t.Name, SUM(ii.Quantity) AS Purchases
FROM invoice_items AS ii, invoices AS i, tracks as t
WHERE ii.InvoiceId = i.InvoiceId
AND ii.TrackId = t.TrackId
AND i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.Name, t.TrackId
ORDER BY SUM(ii.Quantity) DESC;