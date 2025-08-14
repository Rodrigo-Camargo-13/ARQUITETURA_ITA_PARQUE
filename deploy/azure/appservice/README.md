# Deploy — Azure App Service (API)

## Pré-requisitos
- Resource Group e App Service criados (Linux, .NET 8)
- ACR (opcional) se publicar container

## GitHub Actions — build & deploy (App Service nativo)
Crie/edite `.github/workflows/deploy-appservice.yml`:

name: deploy-appservice
on:
  push:
    branches: [ main ]
jobs:
  build-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-dotnet@v4
        with: { dotnet-version: '8.0.x' }
      - run: dotnet publish -c Release -o out
      - name: Login Azure
        uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}
      - name: Deploy to App Service
        uses: azure/webapps-deploy@v3
        with:
          app-name: ${{ secrets.AZURE_WEBAPP_NAME }}
          package: out

## Variáveis necessárias
- `AZURE_CREDENTIALS` (Service Principal JSON)
- `AZURE_WEBAPP_NAME` (nome do App Service)

## Observações
- Para container, troque build dotnet por build/push para ACR e use app service para container.
