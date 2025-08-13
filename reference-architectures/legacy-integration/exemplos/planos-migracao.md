# Planos de Migração — Legados

## Estratégia
- **Strangler Fig**: criar fachada, isolar capabilities e migrar por fatias.
- **ACL (Anti-Corruption Layer)**: mapear modelos, impedir contaminação de domínios.

## Etapas
1. **Inventário** de integrações, SLAs e riscos.
2. **Fatia 1**: encapsular endpoints críticos atrás do Gateway/APIM.
3. **Fatia 2**: replicar leitura com CDC, validar consistência (shadow read).
4. **Fatia 3**: mover escrita com Sagas e compensações; ativar Outbox.
5. **Desligamento**: retirar rotas legadas; redirecionar tráfego definitivo.

## Checklist por fatia
- [ ] C4 atualizado
- [ ] ADR da decisão e rollback plan
- [ ] Observabilidade e alertas
- [ ] Testes de contrato e E2E
- [ ] Comunicação a stakeholders (janela e impacto)
