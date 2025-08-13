# Blueprint — gRPC

## Quando usar
- Comunicação S2S de baixa latência/alto throughput.
- Streaming bidirecional, fluxo contínuo de eventos/telemetria.

## Padrões
- **Contratos** `.proto` versionados; pacotes por domínio: `company.orders.v1`.
- **Semântica**: tempo-limite explícito; retries com backoff exponencial e jitter.
- **Segurança**: mTLS obrigatório; autorização por metadata (scopes).
- **Compatibilidade**: evoluir mensagens de forma backward/forward compatível.
- **Observabilidade**: tracing distribuído (OTel) e métricas RED por método.
- **Erros**: mapear para `status` gRPC adequado (`INVALID_ARGUMENT`, `NOT_FOUND`, `UNAUTHENTICATED`, `PERMISSION_DENIED`, etc.).
- **Gateway**: expor REST/JSON externamente via API Gateway; gRPC permanece interno.

## Critérios de aceite
- `.proto` publicado e versionado.
- Testes de contrato e integração com timeouts e políticas de retry.
- Dashboards por método com p95/p99 e taxa de erro.
