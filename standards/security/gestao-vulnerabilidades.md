# Gestão de Vulnerabilidades

## Fontes
- SCA (Trivy/Grype), SAST (Semgrep/CodeQL), DAST (ZAP), SCARF (containers/IaC).

## Política
- **HIGH/CRITICAL = FAIL** (bloqueio de PR) salvo exceção formal (mini-ADR).
- Prazo padrão: HIGH (15 dias), CRITICAL (7 dias). Renovações exigem justificativa.

## Relatórios
- Job semanal agrega CVEs por repo/serviço; envia ao comitê técnico.
