# Guia Unificado — Segurança, Testes, Logs e Observabilidade

## Segurança
- **AuthN/AuthZ**: OIDC/OAuth2; tokens curtos; escopos mínimos; ABAC/RBAC.
- **Segredos**: Key Vault/Vault + rotação; proibido em repositório.
- **Transporte**: TLS 1.2+; mTLS interno; HSTS; cabeçalhos de segurança.
- **Input Validation**: validação forte; canonicalização; sanitização.
- **Privacidade**: LGPD — minimização, retenção, descarte; logs sem PII.
- **Supply Chain**: SBOM (CycloneDX), assinatura (cosign), política de origem.

## Testes
- **Pirâmide**: Unit > Integração (Testcontainers) > Contrato (Pact) > E2E.
- **Cobertura**: metas por criticidade; mutação onde risco alto.
- **Contratos**: OpenAPI/AsyncAPI + Pact broker + verificação em CI.

## Logs e Métricas
- **Logs**: JSON, nível por ambiente; correlação por `trace_id`/`span_id`.
- **Métricas**: RED/USE; histogramas p50/p95/p99; SLIs/SLOs por serviço.
- **Tracing**: OpenTelemetry em todos os serviços; exporter OTLP.

## Observabilidade (Fluxo)
1) App emite logs/métricas/traces (OTel).
2) Collector agrega e exporta (Tempo/Jaeger/Prometheus/Insights).
3) Dashboards padrão; alertas por SLO (burn rate).
