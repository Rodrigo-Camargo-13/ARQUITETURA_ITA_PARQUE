# Checklist Arquitetural (por solução)
- [ ] C4 C1/C2/C3 prontos e versionados
- [ ] Contratos de API (OpenAPI/AsyncAPI) versionados
- [ ] Testes de contrato (Pact) para integrações críticas
- [ ] Observabilidade ativa (logs estruturados, métricas, tracing)
- [ ] SLOs definidos; health/readiness/liveness
- [ ] Segurança: OIDC/mTLS, ASVS nível 2, LGPD (minimização/retencao)
- [ ] Resiliência: timeout, retry c/ jitter, circuit breaker, idempotência
- [ ] Pipeline com quality gates (SAST/SCA/DAST, SBOM, assinatura)