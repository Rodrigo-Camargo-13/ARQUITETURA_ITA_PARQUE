# Blueprint — API REST

## Objetivo
Definir padrões REST institucionais, cobrindo versionamento, autenticação, erros, paginação, rate limit e observabilidade.

## Padrões
- **Versionamento**: `/v1/...` no path ou `Accept: application/vnd.org.v1+json`.
- **Recursos**: substantivos no plural (`/orders`, `/customers/{id}`), sub-recursos (`/orders/{id}/items`).
- **Métodos**:
  - `GET` idempotente; `POST` cria; `PUT` substitui; `PATCH` parcial; `DELETE` remove.
- **Erros**: envelope padrão
  ```json
  { "traceId": "uuid", "code": "VALIDATION_ERROR", "message": "Campo X é obrigatório", "details": { "campo": "X" } }


Paginação: ?page=1&size=50 ou cursor (?cursor=abc123).

Filtragem/Ordenação: ?status=OPEN&sort=-createdAt.

Projeção: ?fields=id,status,total.

Autenticação/Autorização:

OAuth2/OIDC (Authorization Code + PKCE em SPA).

Escopos por domínio (orders:read, orders:write).

ABAC/RBAC por política.

Idempotência: Idempotency-Key em POST sensíveis (pagamentos, pedidos).

Observabilidade:

Propagar traceId (W3C Trace Context). Retornar traceId no header/resposta.

Logs estruturados, métricas RED, histogramas de latência P50/P95/P99.

Segurança:

TLS 1.2+; CORS restrito; rate limit por client_id.

Input validation e canonização; proteção a deserialização insegura.

Documentação: OpenAPI 3.x como “fonte da verdade”.

Critérios de aceite
OpenAPI versionado e publicado.

Testes de contrato (consumer/provider) para endpoints críticos.

Health checks (/health, /ready), SLIs/SLOs e runbook de incidentes.
