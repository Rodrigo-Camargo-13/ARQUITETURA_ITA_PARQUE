# Guia — Backend Java (Spring Boot)

- **Estrutura**: package-by-feature (`pedido`, `cliente`), camadas `api/domain/infra`.
- **Config**: profiles, externalização (ConfigMap/Secret), BOM.
- **Persistência**: JPA + Flyway/Liquibase; versionamento e rollback plan.
- **Observabilidade**: Micrometer + OpenTelemetry (OTLP); logs JSON com traceId.
- **Segurança**: Spring Security + OIDC; CORS mínimo; mTLS S2S.
- **Testes**: JUnit 5, Testcontainers para DB/mensageria; Pact para contratos.
- **Qualidade**: Spotless/Checkstyle; SAST (Semgrep/CodeQL).
- **Container**: Docker multi-stage; usuário não-root; limites de CPU/RAM.
