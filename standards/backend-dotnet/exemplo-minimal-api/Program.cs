var b = WebApplication.CreateBuilder(args);
b.Services.AddEndpointsApiExplorer();
b.Services.AddSwaggerGen();
var app = b.Build();
app.UseSwagger(); app.UseSwaggerUI();
app.MapGet("/health", () => Results.Ok(new { status = "ok" }));
app.Run();
