# Política de Governança de Arquitetura

## Papéis (RACI)
- **Arquitetura**: responsável por padrões, revisão e aprovação.
- **Squads**: autoras das propostas; responsáveis por implementação e operação (You build it, you run it).
- **Segurança**: consulta/apoio; gates de risco alto.
- **Gestão**: informada; aprova orçamento/cronograma.

## Fluxo de Aprovação
1. Squad cria proposta (C4, ADR preliminar, NFRs, OpenAPI/AsyncAPI, checklist).
2. Validação automática no PR (quality gates). **Falhou → corrige**.
3. Revisão assíncrona (CODEOWNERS). **Ajustes** → nova rodada.
4. Aprovação formal (ata em `governance/atas/`) + ADR final.
5. Liberação canária com SLO/rollback definido.

## ADRs
- **Formato**: `templates/adr.md`.
- **Quando**: decisões com impacto em NFR, custo, segurança, contrato externo.
- **Registro**: pasta `reference-architectures/*/adr/` ou `docs/adrs/`.
