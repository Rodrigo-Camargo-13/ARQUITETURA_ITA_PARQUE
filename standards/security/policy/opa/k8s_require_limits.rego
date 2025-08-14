package kubernetes.resources

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  not c.resources.limits
  msg := sprintf("Container %q sem resources.limits.", [c.name])
}

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  not c.resources.requests
  msg := sprintf("Container %q sem resources.requests.", [c.name])
}
