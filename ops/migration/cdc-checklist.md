# CDC — Checklist

- [ ] Fonte com WAL/CDC habilitado (ex.: PostgreSQL logical decoding)
- [ ] Ferramenta (Debezium/GoldenGate/Data Factory) escolhida
- [ ] Tópicos por tabela (Kafka/Event Hubs), chave por PK
- [ ] Consumidores idempotentes e armazenando offsets
- [ ] Reconciliação periódica (contagens/hashes)
- [ ] Plano de fallback (pausar replicação e operar leitura do legado)
