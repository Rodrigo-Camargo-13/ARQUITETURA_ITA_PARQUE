```markdown
# Matriz de Tecnologias Homologadas

**Status:** Homologado | Em avaliação | Descontinuado  
Preferir versões LTS ou N-1.

| Categoria              | Padrão                                                             | Status        | Observações                              |
|------------------------|--------------------------------------------------------------------|--------------|------------------------------------------|
| **Linguagens**         | Java 17+; Python 3.11+; **.NET 8 (C# 12)**; TypeScript              | Homologado   | LTS/N-1                                  |
| **Backend Java**       | Spring Boot, Spring Cloud, Spring Security                         | Homologado   |                                          |
| **Backend Python**     | FastAPI, SQLAlchemy, Pydantic                                       | Homologado   |                                          |
| **Backend .NET**       | ASP.NET Core 8, EF Core 8, Minimal APIs                             | Homologado   | gRPC/REST                                |
| **Front-end**          | React/Next.js, React Query, TypeScript                             | Homologado   |                                          |
| **API Docs**           | OpenAPI 3.x, AsyncAPI                                               | Homologado   |                                          |
| **Mensageria**         | Kafka                                                              | Homologado   | Schema Registry                          |
| **Mensageria (Azure)** | Event Hubs / Service Bus                                            | Em avaliação | Predominância Azure                      |
| **Relacional**         | PostgreSQL                                                         | Homologado   | Flyway / Alembic / EF Migrations         |
| **Gerenciado (Azure)** | Azure Database for PostgreSQL                                      | Homologado   |                                          |
| **Cache**              | Redis                                                              | Homologado   |                                          |
| **Observabilidade**    | Prometheus, Grafana, OpenTelemetry, Jaeger                         | Homologado   |                                          |
| **Observabilidade (Azure)** | Azure Monitor + Application Insights                          | Homologado   |                                          |
| **Orquestração**       | Kubernetes (AKS/EKS/on-prem)                                        | Homologado   |                                          |
| **Cloud**              | Azure (primária), AWS, on-prem                                     | Homologado   | Por projeto                              |
| **Secrets**            | Azure Key Vault, Vault/KMS                                         | Homologado   |                                          |
| **IaC**                | Terraform, Helm                                                    | Homologado   |                                          |
| **CI/CD**              | GitLab CI, Drone CI                                                 | Homologado   |                                          |
| **CI/CD (Azure)**      | Azure DevOps Pipelines                                              | Em avaliação | Por demanda                              |
| **GitOps**             | Argo CD                                                            | Homologado   |                                          |
| **SAST/SCA**           | Semgrep/CodeQL, Trivy/Grype                                         | Homologado   |                                          |
| **DAST**               | OWASP ZAP                                                          | Homologado   |                                          |
| **Gateway**            | Kong/NGINX                                                         | Homologado   | OIDC, quotas                             |
| **Gateway (Azure)**    | API Management                                                     | Homologado   | Políticas                                |
| **Feature Flags**      | Unleash                                                            | Em avaliação |                                          |
| **Scheduler**          | Quartz, Celery, Hangfire                                           | Homologado   |                                          |

---

## Processo de Revisão
- Revisão trimestral pelo comitê técnico de arquitetura.
- Alterações relevantes devem gerar **ADR** documentada e aprovada.
---

