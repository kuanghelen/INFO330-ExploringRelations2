-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT DISTINCT t2.TrackId, t2.Name, t2.Composer
FROM tracks AS t2
WHERE t2.TrackId NOT IN
    (SELECT DISTINCT t.TrackId
    FROM invoice_items AS ii, tracks AS t
    WHERE ii.TrackId = t.TrackId);

/*
NOTE:
- This is 1519 tracks out of the total of 3503 tracks.
- Question 6 is the inverse of this, so Question 6 must print 1984 tracks.
*/