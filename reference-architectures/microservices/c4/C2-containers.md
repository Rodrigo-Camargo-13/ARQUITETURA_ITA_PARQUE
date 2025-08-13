C4Container
title C2 — Contêineres (Produto A)
Container(api, "API", "REST/gRPC")
Container(worker, "Worker", "Eventos/Jobs")
ContainerDb(db, "PostgreSQL")
Rel(api, worker, "publica eventos")
Rel(worker, db, "persistência")