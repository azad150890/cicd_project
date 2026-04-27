using Microsoft.AspNetCore.Mvc;

namespace WebApp.Controllers;

[ApiController]
[Route("/api")]
public class HomeController : ControllerBase
{
    [HttpGet("status")]
    public string Status()
    {
        return "Service is running";
    }
}