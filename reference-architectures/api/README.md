# APIs — REST/GraphQL/gRPC

**REST**
- Recursos em plural, versionamento (`/v1`), envelope de erros `{ traceId, code, message }`
- Rate limit, paginação, projeção (`fields`), filtros
- Auth: OIDC (OAuth2), escopos, ABAC/RBAC

**GraphQL**
- Quando: composição complexa no front
- Persisted queries, limite de profundidade/custo

**gRPC**
- Quando: baixa latência S2S
- .proto versionado, mTLS, timeouts obrigatórios
