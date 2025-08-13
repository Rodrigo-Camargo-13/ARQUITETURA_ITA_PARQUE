# Runbook — Incidentes de Latência

## Sintoma
Latência acima do SLO definido (p95).

## Passos de resposta
1. Validar métricas no APM.
2. Checar dependências externas (DB, mensageria).
3. Analisar traces de requests lentos.
4. Mitigar (scale-out, rollback, cache).

## Prevenção
- Monitorar métricas-chave
- Revisar índices de banco
- Implementar caching estratégico
