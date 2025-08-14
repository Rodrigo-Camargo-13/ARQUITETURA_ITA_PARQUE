# Blueprint — Serverless

## Quando usar
- Carga esparsa/irregular; eventos assíncronos; custo por uso; time pequeno.

## Decisões
- Funções stateless; cold-start mitigado (provisioned concurrency quando necessário).
- API Management para borda; autorização OIDC.
- Filas/Tópicos (Service Bus/Event Hubs/SQS/Kafka) para orquestração.
- Persistência gerenciada (Cosmos/PG gerenciado/Dynamo).
- Observabilidade com OTel + exporter nativo da cloud; tracing por invocação.

## Limites e cuidados
- Timeouts curtos; idempotência; limites de payload.
- Evitar transações distribuídas; usar compensações.
