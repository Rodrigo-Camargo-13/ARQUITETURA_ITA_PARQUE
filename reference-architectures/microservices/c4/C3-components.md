C4Component
title C3 — Componentes (API)
Component(ctrl, "Controllers")
Component(svc, "Serviços de Domínio")
Component(repo, "Repositórios")
Rel(ctrl, svc, "coordena casos de uso")
Rel(svc, repo, "acessa dados")