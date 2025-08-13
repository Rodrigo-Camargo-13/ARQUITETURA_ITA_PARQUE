C4Context
title C1 — Contexto (Hub de Tecnologia)
Person(usr, "Usuário")
System_Boundary(hub, "Plataformas do Hub"){
  System(app1, "Produto A")
  System(app2, "Produto B")
}
System_Ext(leg, "Sistemas Legados")
Rel(usr, app1, "opera via web/mobile")
Rel(app1, leg, "integra APIs/eventos")