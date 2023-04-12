-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name, ar.Name, i.*
FROM invoice_items AS i, tracks AS t, albums AS al, artists AS ar
WHERE i.TrackId = t.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = ar.ArtistId;