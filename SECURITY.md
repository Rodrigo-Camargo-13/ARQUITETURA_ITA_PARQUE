# Política de Segurança (Vulnerability Disclosure)

Este repositório adota **Divulgação Coordenada de Vulnerabilidades (CVD)**. Pedimos que **não abra issues públicas** para relatar falhas de segurança.

## Como reportar
- Envie um e-mail para **SEU_EMAIL_DE_SEGURANCA** com:
  - Descrição da vulnerabilidade e impacto estimado.
  - Passos de reprodução (PoC), logs e artefatos relevantes.
  - Escopo afetado (arquivos, serviços, versões).
  - Contato para retorno (nome, e-mail, empresa/equipe).

Opcional: você pode criptografar sua mensagem com nossa chave PGP (se disponível) e anexar o fingerprint no e-mail.

## SLA de triagem e resposta
- **Triagem inicial**: até **3 dias úteis**.
- **Confirmação e classificação**: até **7 dias úteis** após triagem.
- **Plano de correção**: comunicado em até **15 dias corridos** (com prazos e versões-alvo).
- **Divulgação pública**: combinada com o pesquisador, após correção ou mitigação disponível.

> Pedimos discrição até disponibilizarmos correção/mitigação. Atribuiremos crédito a pesquisadores que seguirem esta política.

## Escopo
- Código e configurações contidos neste repositório (aplicações, pipelines, templates).
- Documentos e scripts em `cicd/`, `standards/`, `governance/`, `ops/`, `reference-architectures/`.

**Fora de escopo** (exemplos):
- Ataques de engenharia social, DDoS, spam, brute force sobre contas de terceiros.
- Descoberta de diretórios públicos sem impacto de confidencialidade/integridade.
- Vulnerabilidades exigindo acesso físico não autorizado.

## Boas práticas para testes
- Evite afetar disponibilidade (sem cargas maliciosas/volumétricas).
- **Não** exfiltre dados sensíveis reais; utilize ambientes e dados de teste.
- Respeite **LGPD** e demais legislações aplicáveis.

## Gestão de segredos e chaves
- Segredos **não** devem ser comitados. Use **Key Vault/Vault/KMS**.
- Solicite rotação de credenciais comprometidas por **SEU_EMAIL_DE_SEGURANCA** com prioridade **alta**.

## Safe Harbor
Seguindo esta política, não iniciaremos ações legais por testes de boa-fé e divulgação coordenada, desde que:
- Você não acesse, altere, exclua ou exfiltre dados reais.
- Limite-se ao necessário para demonstrar a vulnerabilidade.
- Cesse imediatamente o teste e reporte ao identificar dados sensíveis.

Obrigado por contribuir para a segurança do ecossistema.
