# ARQUITETURA_ITA_PARQUE

Repositório institucional com:
- Arquiteturas de referência (C4, ADR, blueprints)
- Guia de padrões/boas práticas (linguagens/plataformas)
- Matriz de tecnologias homologadas
- Governança técnica (checklists, rituais, CODEOWNERS)
- Pipelines de qualidade (SAST/SCA/SBOM)

## Como usar
1. Consulte `matriz-tecnologias/matriz.md` para saber o que é homologado.
2. Comece por um blueprint em `reference-architectures/`.
3. Aplique padrões de `standards/` (Java, .NET, Python, Front-end, Segurança, Testes, CI/CD).
4. Submeta proposta via `governance/processo-validacao-tecnica.md` + checklists.

## Pipelines
- GitHub: `cicd/github/.github/workflows/quality.yml`
- Azure DevOps: `cicd/azure/azure-pipelines.yml`
- GitLab CI: `cicd/gitlab/.gitlab-ci.yml`
- Drone CI: `cicd/drone/.drone.yml`

## Governança
- Rituais de comitê técnico e revisão trimestral da matriz.
- ADR para decisões relevantes (templates em `templates/`).
