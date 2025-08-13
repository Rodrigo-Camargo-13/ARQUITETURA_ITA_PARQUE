# Padrões — .NET 8 (ASP.NET Core)
- Estrutura: package-by-feature; camadas domínio/app/infra
- APIs: Minimal APIs + versionamento + idempotency-keys
- Persistência: EF Core 8 + migrações idempotentes
- Observabilidade: OpenTelemetry + exporters (OTLP)
- Segurança: OIDC/OAuth2, mTLS interno, políticas de autorização
- Testes: xUnit, Testcontainers, Pact
- Docker: multi-stage; não-root; limites de recursos