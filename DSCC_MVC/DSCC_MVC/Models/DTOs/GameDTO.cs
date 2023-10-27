namespace DSCC_MVC.Models.DTOs;

public class GameDTO
{
    public Guid GameId { get; set; }
    public string GameName { get; set; } = string.Empty;
    public string DeveloperName { get; set; } = string.Empty;
    public string EngineName { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; } = DateTime.Today;
    public Guid GameGenreId { get; set; }
}