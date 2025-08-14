# OpenTelemetry — Guia prático

## .NET (ASP.NET Core 8)
Program.cs (trecho):
builder.Services.AddOpenTelemetry()
  .ConfigureResource(r => r.AddService("api-ita-parque"))
  .WithTracing(t => t
     .AddAspNetCoreInstrumentation()
     .AddHttpClientInstrumentation()
     .AddOtlpExporter())
  .WithMetrics(m => m
     .AddAspNetCoreInstrumentation()
     .AddRuntimeInstrumentation()
     .AddOtlpExporter());

## Java (Spring Boot)
pom.xml: opentelemetry-javaagent + exporters OTLP.
Execução:
JAVA_TOOL_OPTIONS="-javaagent:/otel/opentelemetry-javaagent.jar -Dotel.exporter.otlp.endpoint=http://otel-collector:4317"

## Python (FastAPI)
pip install opentelemetry-distro opentelemetry-exporter-otlp
Execução:
opentelemetry-instrument uvicorn app.main:app --host 0.0.0.0 --port 8080 --traces_exporter otlp --metrics_exporter otlp
