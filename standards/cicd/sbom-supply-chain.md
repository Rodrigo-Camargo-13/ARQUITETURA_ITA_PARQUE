# SBOM & Supply Chain Security

## SBOM (CycloneDX)
- Gerar por linguagem (dotnet, python) e nível repositório.
- Publicar como artefato do pipeline.

## Assinatura
- Assinar imagens/container (cosign/sigstore).
- Exigir verificação no cluster (Policy Controller).

## Dependências
- SCA (Trivy/Grype) com gate de severidade HIGH/CRITICAL.
- Renovação automática de libs; alerts semanais.

## Provenance
- Reprodutibilidade: builds determinísticos; armazenar metadados (SLSA nível alvo).
