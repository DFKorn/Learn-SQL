/* This is the query used to get the id */
/*
  SELECT * FROM albums where release_year IS NULL;
*/

-- Mine
UPDATE albums
SET release_year = 1986
WHERE albums.id > 0 and release_year is NULL;


-- Solution
UPDATE albums
SET release_year = 1986
WHERE id = 4;
