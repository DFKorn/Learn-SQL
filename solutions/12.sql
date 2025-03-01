-- Mine
SELECT bands.name as 'Band', COUNT(songs.id) as 'Number of Songs' from songs
JOIN albums on albums.id = songs.album_id
JOIN bands on albums.band_id =  bands.id
GROUP BY bands.name;

-- initial Solution
SELECT
  bands.name AS 'Band',
  COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;
