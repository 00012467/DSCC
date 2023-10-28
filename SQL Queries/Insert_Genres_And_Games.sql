USE [GamesDB]
GO

-- 10 Records for Genres table
INSERT INTO [dbo].[Genres] ([GenreId],[GenreName])
VALUES
    (NEWID(),'Action'),
    (NEWID(),'Adventure'),
    (NEWID(),'RPG'),
    (NEWID(),'Strategy'),
    (NEWID(),'Simulation'),
    (NEWID(),'Sports'),
    (NEWID(),'Puzzle'),
    (NEWID(),'Horror'),
    (NEWID(),'Science Fiction'),
    (NEWID(),'Fantasy'),
	(NEWID(),'Sci-Fi');
GO


SELECT * FROM Genres

GO 

-- 10 Records for Games table that binds to Genres column with its ID
INSERT INTO [dbo].[Games]
           ([GameId]
           ,[GameName]
           ,[DeveloperName]
           ,[EngineName]
           ,[ReleaseDate]
           ,[GameGenreGenreId])
     VALUES
           (NEWID(), 'The Adventure Begins', 'Adventure Studios', 'Adventure Engine', '2023-01-01', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Space Odyssey', 'Cosmic Creations', 'Cosmic Engine', '2023-01-02', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Medieval Quest', 'Quest Studios', 'Medieval Engine', '2023-01-03', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Underwater World', 'Aqua Studios', 'Aqua Engine', '2023-01-04', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'RoboTech', 'Tech Innovations', 'Tech Engine', '2023-01-05', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Epic Fantasy', 'Fantasy Realms', 'Fantasy Engine', '2023-01-06', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Pirate Adventures', 'Pirate Studios', 'Pirate Engine', '2023-01-07', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Galactic Battle', 'Galactic Games', 'Galactic Engine', '2023-01-08', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Mystical Quest', 'Mystical Creations', 'Mystical Engine', '2023-01-09', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Wild West Adventure', 'Western Studios', 'Western Engine', '2023-01-10', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
		   (NEWID(), 'The Adventure Begins 2', 'Adventure Studios', 'Adventure Engine', '2023-01-01', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Space Odyssey 2', 'Cosmic Creations', 'Cosmic Engine', '2023-01-02', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Medieval Quest 2', 'Quest Studios', 'Medieval Engine', '2023-01-03', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Underwater World 2', 'Aqua Studios', 'Aqua Engine', '2023-01-04', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'RoboTech 2', 'Tech Innovations', 'Tech Engine', '2023-01-05', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Epic Fantasy 2', 'Fantasy Realms', 'Fantasy Engine', '2023-01-06', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Pirate Adventures 2', 'Pirate Studios', 'Pirate Engine', '2023-01-07', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Galactic Battle 2', 'Galactic Games', 'Galactic Engine', '2023-01-08', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Mystical Quest 2', 'Mystical Creations', 'Mystical Engine', '2023-01-09', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Wild West Adventure 2', 'Western Studios', 'Western Engine', '2023-01-10', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),		   
		   (NEWID(), 'The Adventure Begins 3', 'Adventure Studios', 'Adventure Engine', '2023-01-01', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Space Odyssey 3', 'Cosmic Creations', 'Cosmic Engine', '2023-01-02', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Medieval Quest 3', 'Quest Studios', 'Medieval Engine', '2023-01-03', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Underwater World 3', 'Aqua Studios', 'Aqua Engine', '2023-01-04', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'RoboTech 3', 'Tech Innovations', 'Tech Engine', '2023-01-05', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Epic Fantasy 3', 'Fantasy Realms', 'Fantasy Engine', '2023-01-06', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Pirate Adventures 3', 'Pirate Studios', 'Pirate Engine', '2023-01-07', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure')),
           (NEWID(), 'Galactic Battle 3', 'Galactic Games', 'Galactic Engine', '2023-01-08', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Sci-Fi')),
           (NEWID(), 'Mystical Quest 3', 'Mystical Creations', 'Mystical Engine', '2023-01-09', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Fantasy')),
           (NEWID(), 'Wild West Adventure 3', 'Western Studios', 'Western Engine', '2023-01-10', (SELECT TOP 1 GenreId FROM Genres WHERE GenreName = 'Adventure'));
GO

SELECT * FROM Games

GO


-- DELETE FROM Games
-- DELETE FROM Genres