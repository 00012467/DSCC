GO

CREATE TABLE [Genres] (
    [GenreId] uniqueidentifier NOT NULL,
    [GenreName] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Genres] PRIMARY KEY ([GenreId])
);
GO

CREATE TABLE [Games] (
    [GameId] uniqueidentifier NOT NULL,
    [GameName] nvarchar(max) NOT NULL,
    [DeveloperName] nvarchar(max) NOT NULL,
    [EngineName] nvarchar(max) NOT NULL,
    [ReleaseDate] datetime2 NOT NULL,
    [GameGenreGenreId] uniqueidentifier NULL,
    CONSTRAINT [PK_Games] PRIMARY KEY ([GameId]),
    CONSTRAINT [FK_Games_Genres_GameGenreGenreId] FOREIGN KEY ([GameGenreGenreId]) REFERENCES [Genres] ([GenreId])
);
GO

CREATE INDEX [IX_Games_GameGenreGenreId] ON [Games] ([GameGenreGenreId]);
GO

