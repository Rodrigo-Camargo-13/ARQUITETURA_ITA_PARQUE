# Deploy — Azure Kubernetes Service (AKS)

## Pré-requisitos
- AKS + ACR
- kubectl e helm configurados
- (Opcional) Argo CD para GitOps

## Helm Chart mínimo
Estrutura:
charts/api/
  Chart.yaml
  values.yaml
  templates/deployment.yaml
  templates/service.yaml
Exemplo `templates/deployment.yaml`:
apiVersion: apps/v1
kind: Deployment
metadata: { name: {{ include "api.fullname" . }} }
spec:
  replicas: 2
  selector: { matchLabels: { app: {{ include "api.name" . }} } }
  template:
    metadata: { labels: { app: {{ include "api.name" . }} } }
    spec:
      containers:
        - name: api
          image: {{ .Values.image.repository }}:{{ .Values.image.tag }}
          ports: [{ containerPort: 8080 }]
          env: [{ name: ASPNETCORE_URLS, value: http://+:8080 }]

## GitHub Actions — build, push ACR e helm upgrade
`.github/workflows/deploy-aks.yml`:
name: deploy-aks
on: { push: { branches: [ main ] } }
jobs:
  build-push-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Azure login
        uses: azure/login@v1
        with: { creds: ${{ secrets.AZURE_CREDENTIALS }} }
      - name: ACR login
        run: az acr login -n ${{ secrets.AZURE_ACR_NAME }}
      - name: Build & push image
        run: |
          IMAGE=${{ secrets.AZURE_ACR_NAME }}.azurecr.io/ita-parque/api
          docker build -t $IMAGE:${{ github.sha }} .
          docker push $IMAGE:${{ github.sha }}
      - name: Get AKS credentials
        run: az aks get-credentials -g ${{ secrets.AZURE_RG }} -n ${{ secrets.AZURE_AKS }}
      - name: Helm upgrade
        run: |
          helm upgrade --install api charts/api \
            --set image.repository=${{ secrets.AZURE_ACR_NAME }}.azurecr.io/ita-parque/api \
            --set image.tag=${{ github.sha }}

## Variáveis necessárias (Secrets)
- AZURE_CREDENTIALS, AZURE_ACR_NAME, AZURE_RG, AZURE_AKS
