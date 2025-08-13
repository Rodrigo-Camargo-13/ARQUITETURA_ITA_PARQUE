# Blueprint — Strangler Fig + ACL

## Objetivo
Migrar funcionalidades do sistema legado para um alvo moderno sem big bang.

## Componentes
- **Fachada/Gateway**: termina autenticação, roteia chamadas.
- **ACL**: camada de tradução entre modelos (legado ↔ moderno).
- **Serviços alvo**: recebem tráfego progressivamente (canary/blue-green).
- **CDC/Outbox**: sincronizam dados com consistência eventual.

## Fluxo
1. Cliente → Gateway → (legado ou alvo) conforme roteamento/flag.
2. ACL adapta contratos (modelos, erros, semântica).
3. Outbox publica eventos; novos serviços consomem.
4. Monitoramento de métricas (latência, erro, regressões).

## Riscos e mitigação
- **Divergência de dados**: auditoria periódica, reconciliação.
- **Débito técnico**: backlog de remoção de “shims”.
- **Fallback**: reversão rápida do roteamento.
