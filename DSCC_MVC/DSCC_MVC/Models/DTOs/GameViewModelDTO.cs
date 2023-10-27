using Microsoft.AspNetCore.Mvc.Rendering;

namespace DSCC_MVC.Models.DTOs;

public class GameViewModelDTO
{
    public required GameDTO Game { get; set; }
    public SelectList? Genres { get; set; }
}