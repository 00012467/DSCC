namespace DSCC_API.Models;

public class Game
{
    public Guid GameId { get; set; }
    public string GameName { get; set; } = string.Empty;
    public string DeveloperName { get; set; } = string.Empty;
    public string EngineName { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; }
    public Genre? GameGenre { get; set; }
}