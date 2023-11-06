IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
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

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20231025152638_InitialCreate', N'7.0.13');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20231028091534_MigrationToAws', N'7.0.13');
GO

COMMIT;
GO

