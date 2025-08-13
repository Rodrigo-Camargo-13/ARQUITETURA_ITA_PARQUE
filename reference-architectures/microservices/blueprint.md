# Blueprint — Microserviços (DDD + Eventos)

## Decisões
- Decomposição por domínio (bounded contexts)
- API Gateway (borda) + Service Mesh opcional (leste-oeste)
- Comunicação: REST/gRPC síncrono; eventos (Kafka/Event Hubs) assíncrono
- Transações: Sagas (coreografia/orquestração) + Outbox/CDC
- Observabilidade: OTel (logs/métricas/tracing) com correlação
- Segurança: OIDC/OAuth2, tokens curtos, mTLS; secrets em Vault/Key Vault

## Critérios de aceite
- C4 C1/C2/C3 versionados
- OpenAPI/AsyncAPI publicados
- Pact tests para integrações
- SLOs definidos e health/readiness
- Runbook por serviço