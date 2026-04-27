var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "🚀 Hello from Azure + Terraform CI/CD!");

app.MapGet("/health", () => "OK");

app.Run();