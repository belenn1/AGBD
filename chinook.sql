SELECT name, Composer, Milliseconds FROM tracks

SELECT FirstName, LastName, Address, city FROM customers

SELECT name, Milliseconds FROM tracks
WHERE Composer is NULL and Milliseconds >2900000

SELECT LastName,FirstName, Company FROM customers
WHERE Company is NOT NULL

SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState is NOT NULL 
ORDER BY BillingCity DESC

SELECT Title FROM albums
WHERE Title LIKE "%OF%" --contiene
ORDER BY Title ASC,Title

SELECT t.Name, g.Name FROM tracks t
JOIN genres g ON t.GenreId = g.GenreId

SELECT t.Name, a.Title FROM tracks t
JOIN albums a ON  t.AlbumId = a.AlbumId
ORDER BY Title DESC