# Estratégia de Migração de Dados

1) Snapshot inicial → validação (tamanho, checksums)
2) CDC contínuo até cutover
3) Janela de corte (somente leitura no legado)
4) Cutover: apontar escrita para o alvo; monitorar erros/latência
5) Reconciliação e “close out” do legado
