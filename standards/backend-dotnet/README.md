# Padrões — .NET 8 (ASP.NET Core)

- Estrutura: package-by-feature; camadas domínio/aplicação/infra
- APIs: Minimal APIs, versionamento, idempotency-keys
- Persistência: EF Core 8 + migrações idempotentes
- Observabilidade: OpenTelemetry (logs/métricas/traces)
- Segurança: OIDC/OAuth2, mTLS interno, CORS mínimo
- Testes: xUnit, Testcontainers, Pact (contratos)
- Docker: multi-stage, usuário não-root, limites de recursos
