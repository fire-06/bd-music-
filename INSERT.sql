
INSERT INTO Genres (genre_name) 
VALUES ('Rock'), ('Pop'), ('Jazz');

INSERT INTO Artists (artist_name) 
VALUES ('The Beatles'), ('Taylor Swift'), ('Louis Armstrong'), ('Coldplay');

INSERT INTO Genres_Artists (genre_id, artist_id) 
VALUES (1, 1), (2, 2), (3, 3), (1, 4), (2, 4);

INSERT INTO Albums (album_name, release_year) 
VALUES ('Abbey Road', 1969),  ('1989', 2019),  ('What a Wonderful World', 1967);


INSERT INTO Artists_Albums (artist_id, album_id) 
VALUES (1, 1),  (2, 2),  (3, 3);

INSERT INTO Tracks (track_name, duration, album_id)
VALUES ('Come Together', 259, 1), ('Something my', 182, 1), ('Shake It Off', 242, 2), ('Blank Space', 231, 2), ('What a Wonderful World', 140, 3), ('Hello, Dolly!', 146, 3);



INSERT INTO Compilations (compilation_name, release_year) 
VALUES ('Greatest Hits 2018', 2018),('Top Hits 2019', 2019),('Best of 2020', 2020),('Jazz Classics', 2020);

INSERT INTO Compilations_Tracks (compilation_id, track_id) 
VALUES 
(1, 19), -- Трек с id 19 включен в сборник с id 1
(1, 21), -- Трек с id 21 включен в сборник с id 1
(2, 22), -- Трек с id 22 включен в сборник с id 2
(2, 24), -- Трек с id 24 включен в сборник с id 2
(3, 20), -- Трек с id 20 включен в сборник с id 3
(3, 23), -- Трек с id 23 включен в сборник с id 3
(4, 23), -- Трек с id 23 включен в сборник с id 4
(4, 24); -- Трек с id 24 включен в сборник с id 4






