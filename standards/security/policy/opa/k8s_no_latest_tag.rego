package kubernetes.images

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  not contains(c.image, ":")
  msg := sprintf("Container %q sem tag de imagem (use tag imutável).", [c.name])
}

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  endswith(c.image, ":latest")
  msg := sprintf("Container %q usa tag 'latest' (proibido).", [c.name])
}
