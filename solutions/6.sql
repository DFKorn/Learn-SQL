--mine
SELECT albums.name, albums.release_year, Sum(songs.length) FROM songs
JOIN albums on songs.album_id = albums.id
GROUP BY albums.id
ORDER BY Sum(songs.length) DESC
LIMIT 1
;


-- solution =>

SELECT
  albums.name as Name,
  albums.release_year as 'Release Year',
  SUM(songs.length) as 'Duration'
FROM albums
JOIN songs on albums.id = songs.album_id
GROUP BY songs.album_id
ORDER BY Duration DESC
LIMIT 1;
