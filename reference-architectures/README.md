# Arquiteturas de Referência

Estrutura:
- `microservices/` — DDD + eventos, Sagas, Outbox/CDC, observabilidade, segurança.
- `api/` — REST/GraphQL/gRPC (contratos, versionamento, erros, rate-limit).
- `events/` — AsyncAPI, schema evolution, DLQ, idempotência.
- `legacy-integration/` — Strangler/ACL, planos de migração.

**Padrão de entrega:**
- Diagramas C4 (C1/C2/C3) em Mermaid/draw.io
- ADRs (trade-offs e decisão)
- Exemplos mínimos (OpenAPI/AsyncAPI, pasta examples/)
