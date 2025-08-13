# Guia de Contribuição

Obrigado por contribuir com o **ARQUITETURA_ITA_PARQUE**. Este repositório consolida
arquiteturas de referência, padrões/boas práticas, matriz de tecnologias e governança.

## Princípios
- **Padrão institucional > preferência pessoal**.
- **ADR para decisões relevantes** (template em `templates/adr.md`).
- Documentação clara, exemplos mínimos e **evidências automatizadas** (quality gates).

## Fluxo de trabalho
1. **Abra uma issue** descrevendo objetivo, contexto e NFRs (quando aplicável).
2. **Crie uma branch** curta a partir de `main`:
   - `feat/<escopo>-<resumo>`, `fix/<escopo>-<resumo>`, `docs/<escopo>-<resumo>`
3. **Commits** seguindo **Conventional Commits**:
   - `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`, `ci:`
4. **Inclua ADR** quando alterar padrões/matriz/arquitetura:
   - `templates/adr.md` + linke na PR.
5. **Atualize READMEs** das pastas alteradas.
6. **Abra PR** vinculando à issue, com checklist preenchido.

## Checklist de PR
- [ ] Título/commits usando Conventional Commits
- [ ] Documentação atualizada (README/blueprints/standards)
- [ ] Se mudou padrão/matriz: ADR anexado
- [ ] Pipelines passaram (build/test/SAST/SCA/SBOM)
- [ ] Exemplos mínimos funcionais (quando aplicável)

## Estilo e organização
- **.NET**: `package-by-feature`, Minimal APIs, EF Migrations idempotentes.
- **Java**: Spring Boot/Cloud/Security; profiles + BOM; Flyway/Liquibase.
- **Python**: FastAPI; SQLAlchemy + Alembic; Ruff/Black/Isort.
- **Front**: React/Next + TS; React Query; testes (Jest/Playwright).
- **Segurança**: OWASP ASVS Nível 2; segredos fora do repo.
- **Observabilidade**: OpenTelemetry (logs/métricas/trace) + `trace_id` ecoado.

## Code Owners e revisão
- Revisão por **CODEOWNERS** obrigatória nas pastas de arquitetura, padrões e governança.
- O comitê técnico pode **solicitar ajustes** para garantir consistência institucional.

## Comunicação
- Discussões técnicas nas issues/PRs.
- Alterações de matriz/padrões exigem registro e consenso (revisão trimestral).
