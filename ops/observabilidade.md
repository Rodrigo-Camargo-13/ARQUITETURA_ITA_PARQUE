# Observabilidade — Padrão Institucional

## 1. Princípios Gerais
- **OpenTelemetry** obrigatório em todas as aplicações e serviços (traces, métricas e logs estruturados).
- **Export OTLP** para:
  - Grafana Tempo (traces)
  - Prometheus (métricas)
  - Jaeger (traces distribuídos)
  - Application Insights (Azure)
- **RED/USE** como padrões de métricas:
  - **RED** (Request Rate, Errors, Duration) para serviços voltados a usuários.
  - **USE** (Utilization, Saturation, Errors) para infraestrutura.
- Painéis oficiais por sistema/serviço.
- `trace_id` ecoado para o cliente em respostas HTTP/gRPC.
- Correlação de logs, métricas e traces via `trace_id` e `span_id`.

## 2. Métricas e Painéis
- **Métricas de Negócio**: KPIs relevantes expostos via Prometheus.
- **Métricas Técnicas**:
  - Latência (p95/p99)
  - Taxa de erros
  - Throughput
  - Uso de CPU/Memória/Disco
  - Tamanho de fila/mensageria
- **Painéis oficiais**:
  - Disponibilidade por SLO
  - Latência (histogramas)
  - Erros segmentados por causa
  - Métricas de uso e performance

## 3. Alertas e SLOs
- Alertas baseados em **orçamento de erro** (*error budget burn rate*).
- Alertas multi-nível:
  - **Crítico**: impacto direto no usuário/SLO.
  - **Alerta**: tendência de degradação.
  - **Info**: anomalias para análise.
- Definição de SLOs por serviço, revisados trimestralmente.

## 4. Logs
- Formato **estruturado** (JSON) com campos padrão:
  - timestamp
  - level
  - message
  - trace_id/span_id
  - service
  - environment
- Sem dados sensíveis em logs.
- Retenção: mínimo 90 dias (serviços críticos: 180 dias).

## 5. Responsabilidades
- **Desenvolvedores**:
  - Implementar instrumentação OpenTelemetry.
  - Garantir métricas e logs conforme padrão.
- **Equipe de Observabilidade**:
  - Manter painéis e alertas.
  - Revisar métricas e SLOs.
- **Comitê Técnico**:
  - Revisão e aprovação de alterações no padrão.

## 6. Referências
- [OpenTelemetry Docs](https://opentelemetry.io/)
- [RED Method](https://www.weave.works/blog/the-red-method-key-metrics-for-microservices-architecture/)
- [USE Method](http://www.brendangregg.com/usemethod.html)
