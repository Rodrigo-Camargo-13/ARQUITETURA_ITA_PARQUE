# Quality Gates — Política Institucional

## Objetivo
Impedir que mudanças cheguem a ambientes compartilhados sem qualidade mínima e segurança básica.

## Etapas Mínimas na Pipeline
1. **Build + Testes Rápidos** (<5 min)
2. **SAST** (Semgrep/CodeQL) no PR
3. **SCA** (Trivy/Grype) — falhar em HIGH/CRITICAL
4. **Contratos** (Pact) para integrações críticas
5. **Integração** em ambiente efêmero (Testcontainers/compose)
6. **DAST** (ZAP) em pre-release
7. **SBOM** (CycloneDX) + assinatura
8. **Políticas IaC** (OPA/Conftest, tfsec) se aplicável

## Critérios de Aprovação
- Cobertura mínima por módulo crítico (definida por risco).
- Zero vulnerabilidades CRITICAL e ZERO segredos expostos.
- Evidências publicadas no job (artefatos, relatórios).

## DAST
- OWASP ZAP rodando em pre-release/ambiente efêmero contra endpoints expostos.
- Fails em payloads críticos (SQLi/XSS/IDOR).

## Gestão de Vulnerabilidades
- SCA diário + relatório semanal; CVEs HIGH/CRITICAL exigem exceção formal (ADR curta) e prazo.
