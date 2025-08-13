# Guia — Testes de Contrato (Pact)

## Por que
Evitar que mudanças em provedores quebrem consumidores sem aviso.

## Fluxo
1. Consumidor gera pact localmente e publica no Pact Broker.
2. Provedor roda verificação contra pacts publicados.
3. Pipeline bloqueia deploy se contrato for quebrado.

## Boas práticas
- Versões semânticas de contrato.
- Pact por consumidor/endpoint crítico.
- Testar cenários de erro e limites (404/401/429).
