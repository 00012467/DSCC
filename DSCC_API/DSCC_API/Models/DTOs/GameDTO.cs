namespace DSCC_API.Models.DTOs;

public class GameDTO
{
    public required string GameName { get; set; }
    public required string DeveloperName { get; set; }
    public required string EngineName { get; set; }
    public DateTime ReleaseDate { get; set; }
    public Guid GameGenreId { get; set; }
}