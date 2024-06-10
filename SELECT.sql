-- Название самого длительного трека
SELECT track_name, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM Tracks
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compilation_name
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

-- Исполнители, чье имя состоит из одного слова
SELECT artist_name
FROM Artists
WHERE artist_name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM Tracks
WHERE track_name ILIKE '%мой%' OR track_name ILIKE '%my%';

-- Количество исполнителей в каждом жанре
SELECT g.genre_name, COUNT(ga.artist_id) AS artist_count
FROM Genres g
JOIN Genres_Artists ga ON g.genre_id = ga.genre_id
GROUP BY g.genre_name;

-- Количество треков, выпущенных в альбомах с 2019 по 2020 год
SELECT COUNT(t.track_id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому
SELECT a.album_name, AVG(t.duration) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.album_name;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT ar.artist_name
FROM Artists ar
WHERE ar.artist_id NOT IN (
    SELECT aa.artist_id
    FROM Artists_Albums aa
    JOIN Albums al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
);

-- Названия сборников, в которых присутствует конкретный исполнитель (например, Coldplay)
SELECT c.compilation_name
FROM compilations c
JOIN "Compilations_Tracks" ct ON c.compilation_id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.track_id
JOIN Albums a ON t.album_id = a.album_id
JOIN Artists_Albums aa ON a.album_id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.artist_id
WHERE ar.artist_name = 'Taylor Swift';

