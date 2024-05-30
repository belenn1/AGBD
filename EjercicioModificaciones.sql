INSERT INTO artists(name)
VALUES("Mitski")

INSERT INTO albums(Title,ArtistId)
VALUES("the land is inhospitable and so are we",277)

INSERT INTO tracks(name,MediaTypeId,Milliseconds,UnitPrice)
VALUES("Star",5,180000,0.99),("My love mine all mine ",5,150000,0.99),("i don't like my mind ",5,135600,0.99)

UPDATE tracks SET AlbumId = 348,Composer = "Mitski"
WHERE  GenreId is NULL;

DELETE FROM tracks
WHERE Composer = "Mitski"

DELETE FROM albums
WHERE Title = "the land is inhospitable and so are we"

DELETE FROM artists
WHERE name = "Mitski"