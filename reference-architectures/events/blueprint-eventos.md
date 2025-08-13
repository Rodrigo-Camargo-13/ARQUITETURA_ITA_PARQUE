# Blueprint — Arquitetura Orientada a Eventos

## Tipos de eventos
- **Domínio** (semânticos, internos): refletem mudanças relevantes do negócio.
- **Integração** (públicos): contratos estáveis para consumo externo.

## Padrões
- **Nomes**: `dominio.recurso.evento.vN` (ex.: `pagamentos.fatura.criada.v1`).
- **Schema Registry** (Avro/JSON Schema) e evolução compatível.
- **Entrega**: pelo menos uma vez; consumidores **idempotentes**.
- **Particionamento**: chave de negócio para ordenação local (ex.: `faturaId`).
- **DLQ**: política de reprocessamento; quarentena para eventos malformados.
- **Replay**: controlado; atenção a efeitos colaterais; idempotência obrigatória.
- **Outbox + CDC**: evitar dual-write em transações; publicar com garantias.
- **Segurança**: autorização por tópico; criptografia em trânsito.

## Critérios de aceite
- AsyncAPI publicado e testado; key metrics por tópico.
- Consumidores com `eventId` e deduplicação.
- Runbook de reprocessamento e auditoria.
- `eventId` (UUID) obrigatório; consumidores deduplicam por `eventId`.
- DLQ com TTL e reprocessamento manual documentado no runbook.
