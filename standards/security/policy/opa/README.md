# Políticas OPA/Conftest
- `k8s_no_latest_tag.rego`: proíbe imagens sem tag ou com `:latest`
- `k8s_require_limits.rego`: exige `resources.requests/limits`

Execute local:
```bash
conftest test deploy/k8s/*.yaml --policy security/policy/opa
