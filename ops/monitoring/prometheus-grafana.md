# Prometheus + Grafana

## Scrape (exemplo)
scrape_configs:
  - job_name: 'api-ita-parque'
    static_configs: [ { targets: ['api:8080'] } ]

## Dashboards
- RED: requests/s, error %, duration
- Infra (USE): CPU, mem, saturação, erros

## Alertas (burn rate)
- 1h e 6h windows para violação de SLO
