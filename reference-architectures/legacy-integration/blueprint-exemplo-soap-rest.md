# Blueprint — Integração Legada (SOAP → REST) com Strangler

## Fluxo
1) Cliente → API Gateway (JWT) → Façade REST.
2) Façade chama legado SOAP (adapter) + mapeamento de modelos (ACL).
3) Publica **eventos de integração** (ex.: `clientes.perfil.atualizado.v1`) para novos serviços.
4) Migração por fatias: endpoints priorizados, flags de roteamento, canário.

## Critérios de aceite
- Contratos REST publicados + mocks de legado.
- Plano de rollback e monitoramento de erro/latência por rota.
