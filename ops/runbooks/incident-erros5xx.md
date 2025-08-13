# Runbook — Incidentes de Erros 5xx

## Sintoma
Aumento súbito na taxa de erros 5xx na API.

## Passos de resposta
1. Confirmar ocorrência via dashboard de monitoramento.
2. Coletar logs de erro no período.
3. Identificar serviços impactados.
4. Acionar squad responsável.
5. Executar rollback se necessário.

## Prevenção
- Testes de carga antes de deploys críticos
- Feature flags para rollback rápido
