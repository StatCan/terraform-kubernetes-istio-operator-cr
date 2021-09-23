resource "helm_release" "istio_operator_manifest" {
  name      = var.name
  namespace = var.namespace
  chart     = "${path.module}/istio-operator-manifest"

  set {
    name  = "spec"
    value = var.spec
  }
}
