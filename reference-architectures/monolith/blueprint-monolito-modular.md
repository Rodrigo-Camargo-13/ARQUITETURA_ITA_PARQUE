# Blueprint — Monólito Modular

## Quando usar
- MVPs; baixíssimo time-to-market; equipe pequena; domínio ainda instável.

## Decisões
- **Módulos por domínio** (package-by-feature); camada de aplicação fina.
- API única (REST). Contratos versionados.
- Migrações de dados centralizadas; schema por módulo (prefixos).
- Eventos internos (in-process) para reduzir acoplamento.
- Rota de migração futura para microsserviços (extraindo módulos com Strangler).

## Critérios de aceite
- C4 C1/C2/C3 do monólito + ADR “por que monólito”.
- Observabilidade e SLOs globais.
- Plano de extração modular (milestones).
