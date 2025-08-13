# Pirâmide de Testes

## Camadas
- **Unitários**: isolam regras de negócio.
- **Componente/Integração**: sem dependências externas (Testcontainers).
- **Contrato**: Pact para consumidores/provedores críticos.
- **E2E**: poucos, apenas fluxos do “caminho feliz”.

## Metas
- Cobertura mínima por risco; mutação em módulos críticos.
- Tempo total de execução sob controle (<10 min em PR).
