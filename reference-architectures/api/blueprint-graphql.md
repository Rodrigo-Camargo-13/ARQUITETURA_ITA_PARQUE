
# Blueprint — GraphQL

## Quando usar
- Composição complexa no front-end (vários agregados em uma screen).
- Redução de round-trips e overfetch/underfetch de REST.

## Padrões
- **Schema** modular por domínio, com `Query`, `Mutation` e (se necessário) `Subscription`.
- **Persisted Queries**: habilitar para evitar queries arbitrárias em produção.
- **Limites**: profundidade máxima e custo por campo; recusar queries sem autenticação.
- **Autorização**: diretivas por campo/tipo (`@auth(scope: "orders:read")`).
- **N+1**: DataLoader ou resolvers batelados.
- **Erros**: mapear para `errors[]` com `extensions.code` (ex.: `UNAUTHENTICATED`, `FORBIDDEN`, `VALIDATION_FAILED`).
- **Versionamento**: evolutivo e compatível; não remova campos abruptamente (deprecation).
- **Observabilidade**: trace por resolver (OpenTelemetry), métricas de latência por operação, top offenders.
- **Segurança**: validação de input rigorosa; limitar upload; proibir introspection em produção (opcional, se persisted queries ativado).

## Critérios de aceite
- Esquema validado e publicado; limiares de profundidade/custo configurados.
- Testes E2E e de contrato por operação importante.
- Tracing por resolver e alarmes por p95 de operação.
