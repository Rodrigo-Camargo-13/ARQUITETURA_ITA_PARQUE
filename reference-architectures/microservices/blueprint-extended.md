# Blueprint — Microsserviços (Estendido)

## Quando usar
- Vários domínios com ciclos de release independentes; requisitos distintos de escala/latência; múltiplas squads.

## Decisões estruturais
- Domínios → bounded contexts. Um repositório por serviço; deploy independente.
- Borda: API Gateway (OIDC, rate-limit, WAF).
- Tráfego leste-oeste: Service Mesh opcional (mTLS, retries, circuit breaker).
- Sincronia: REST/gRPC com **timeouts** e **retries com jitter**.
- Assíncrono: **Kafka/Event Hubs**; Outbox+CDC; Sagas (coreografia>orquestração).
- Dados: cada serviço dono do seu schema (no shared DB). Cache por domínio (Redis).
- Observabilidade: OpenTelemetry em todos; `trace_id` em responses; métricas RED/USE.
- Resiliência: bulkheads, backpressure, idempotência, DLQ.
- Segurança: OIDC/OAuth2, escopos mínimos, políticas ABAC/RBAC; secrets no Vault/Key Vault.

## Critérios de aceite
- C4 C1/C2/C3 versionados e ADR da decisão.
- OpenAPI/AsyncAPI publicados e validados em CI.
- Pact tests para integrações críticas.
- SLOs por serviço e runbooks.
