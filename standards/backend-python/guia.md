# Guia — FastAPI

## Estrutura
app/
main.py
routers/
schemas/
services/
repositories/

## Execução
```bash
uvicorn app.main:app --host 0.0.0.0 --port 8080

Padrões
Validação com Pydantic; erros padronizados.

Observabilidade (middleware OTel).

OAuth2/OIDC; CORS mínimo.

Testes: pytest + Testcontainers; contratos com Pact.