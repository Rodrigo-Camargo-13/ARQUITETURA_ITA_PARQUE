# Pact Broker

Este documento descreve como publicar e verificar contratos de consumidores e provedores usando o Pact Broker.

## URL do broker
- Definir URL interna/externa.

## Fluxo
1. Consumidor gera e publica o contrato (pact file).
2. Provedor busca e verifica o contrato.
3. Pipeline bloqueia merge se o contrato não for atendido.

## Estrutura
- `testing/pact/pacts/` → contratos gerados.
- `testing/pact/verifications/` → relatórios de verificação.