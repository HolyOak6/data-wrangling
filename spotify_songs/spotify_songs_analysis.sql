USE new_schema; 
SELECT * FROM spotify_songs_dataset; 
DESCRIBE spotify_songs_dataset; 

#Artist Popularity
SELECT artist, AVG(popularity) AS avg_popularity
FROM spotify_songs_dataset
GROUP BY artist

#Artists with Average Popularity = 100 
SELECT COUNT(artist) 
FROM (
    SELECT artist, AVG(popularity) AS avg_popularity
    FROM spotify_songs_dataset
    GROUP BY artist
    HAVING avg_popularity = 100
) AS sub;

#Song Count per Genre 
SELECT genre, COUNT(song_title) AS song_count 
FROM spotify_songs_dataset
GROUP BY genre 
ORDER BY song_count DESC; 

#Average Popularity per Genre
SELECT genre, AVG(popularity) AS average_popularity
FROM spotify_songs_dataset
GROUP BY genre 
ORDER BY average_popularity DESC; 

#Song Count per Label 
SELECT label, COUNT(song_title) AS song_count 
FROM spotify_songs_dataset 
GROUP BY label 
ORDER BY song_count DESC; 

#Average Popularity by Label 
SELECT label, AVG(popularity) AS average_popularity 
FROM spotify_songs_dataset
GROUP BY label 
ORDER BY average_popularity DESC;

#Artist with Most Albums
SELECT artist, COUNT(album) AS album_count
FROM spotify_songs_dataset
GROUP BY artist
ORDER BY album_count DESC
LIMIT 15;

#Label with Most Albums
SELECT label, COUNT(album) AS album_count
FROM spotify_songs_dataset
GROUP BY label
ORDER BY album_count DESC;

#Songs released after 2020 with popularity > 80:
SELECT song_title, artist, release_date, popularity
FROM spotify_songs_dataset
WHERE release_date > '2020-01-01' AND popularity > 80
ORDER BY popularity DESC
LIMIT 20;

#Songs where artist and producer are the same person (self-produced tracks):
SELECT song_title, artist
FROM spotify_songs_dataset
WHERE artist = producer;

#Top 3 songs per genre by popularity:
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY genre ORDER BY popularity DESC) AS rn
    FROM spotify_songs_dataset
) AS sub
WHERE rn <= 3;

#Artists with the widest genre diversity
SELECT artist, COUNT(DISTINCT genre) AS genre_count
FROM spotify_songs_dataset
GROUP BY artist
ORDER BY genre_count DESC
LIMIT 10;