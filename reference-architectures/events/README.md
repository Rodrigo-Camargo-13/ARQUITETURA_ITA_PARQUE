# Eventos — Padrões

- Domínio: `dominio.recurso.evento` (ex.: `pagamentos.fatura.criada`)
- Schema Registry / evolução compatível
- Entrega pelo menos uma vez, consumidores idempotentes
- Particionamento por chave de negócio, DLQ e reprocessamento controlado
