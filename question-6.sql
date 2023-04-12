-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT DISTINCT t.TrackId, t.Name, t.Composer
FROM invoice_items AS ii, tracks AS t
WHERE ii.TrackId = t.TrackId;

/*
NOTE:
- This is 1984 tracks out of the total of 3503 tracks.
- Question 7 is the inverse of this, so Question 7 must print 1519 tracks.
*/
