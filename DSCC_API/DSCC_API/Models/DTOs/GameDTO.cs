namespace DSCC_API.Models.DTOs;

public class GameDTO
{
    public string GameName { get; set; } = string.Empty;
    public string DeveloperName { get; set; } = string.Empty;
    public string EngineName { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; }
    public Guid GameGenreId { get; set; }
}