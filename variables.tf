variable "name" {
  type        = string
  description = "The name to give to the IstioOperator. "
}

variable "namespace" {
  type        = string
  description = "The namespace in which to deploy the IstioOperator CR."
}

variable "spec" {
  description = "The 'spec' of the IstioOperator CR to deploy."
  type        = string
}
