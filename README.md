# terraform-kubernetes-istio-operator-cr

## Introduction
This module deploys a single `IstioOperator.install.istio.io/v1alpha1` CustomResource.

## Security Controls

The following security controls can be met through configuration of this template:

* TBD

## Requirements
* The namespace where the IstioOperator CR is to be installed should already be created.
* Terraform v0.13+
* terraform-provider-helm 2.3+

## Usage

```terraform
module "istio_operator" {
  source = "git::https://github.com/canada-ca-terraform-modules/terraform-kubernetes-istio-operator-cr.git?ref=v1.0.0"

  name             = "istio"
  namespace        = "istio-system"
  spec             = <<EOF
components:
  cni:
    ...
  ingressGateways:
    ...
  profile: default
  ...
EOF
}
```

## Variables Values

| Name      | Type   | Required | Description                                            |
| --------- | ------ | -------- | ------------------------------------------------------ |
| name      | string | yes      | The name to give to the IstioOperator.                 |
| namespace | string | yes      | The namespace in which to deploy the IstioOperator CR. |
| spec      | string | yes      | The `spec` of the IstioOperator CR to deploy.          |

## History

| Date     | Release     | Change                                                    |
| -------- | ----------- | --------------------------------------------------------- |
| 20200821 | v1.0.0      | 1st release                                               |

