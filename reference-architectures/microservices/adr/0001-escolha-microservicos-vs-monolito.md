# ADR 0001 — Microsserviços vs. Monólito Modular

## Contexto
Necessidade de evoluir múltiplos domínios com equipes paralelas, garantindo NFRs (escalabilidade, resiliência, deploy independente).

## Opções
- **A) Monólito modular (.NET/Java)**  
  **Prós**: simplicidade operacional, transações locais, menor custo inicial.  
  **Contras**: acoplamento temporal, deploy único, escala horizontal de tudo.

- **B) Microsserviços (DDD + eventos)**  
  **Prós**: autonomia de times, deploy/escala independentes, antifragilidade por isolamento de falhas.  
  **Contras**: complexidade operacional (observabilidade, rede, dados), necessidade de SRE/DevOps maduros.

## Decisão
**B) Microsserviços por fronteira de domínio**, com adoção **incremental**. Usar **monólito modular** apenas para domínios pequenos/voláteis ou MVP.

## Consequências
- Investimento em CI/CD, GitOps, observabilidade, segurança S2S (mTLS), contratos evolutivos e Sagas.
- Padronizar Gateway, Service Mesh (opcional) e Outbox/CDC.

## Métricas de Validação
- Tempo de lead time por serviço ↓
- Taxa de falhas por mudança ↔/↓
- P95 de latência dentro do SLO
