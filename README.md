## LKE with Extras

This Terraform module provisions Linode Kubernetes Engine (LKE) with common add-ons:

- External DNS
  External DNS is configured with a Linode API token scoped to DNS services.
- Cert Manager
  cert-manager is configured with an HTTP prover (which uses nginx-ingress).
- Nginx Ingress Controller
  This default ingress controller will use a single LoadBalancer Service for all Ingress objects.

## Variables

See `terraform.tfvars.sample`. Copy this to `terraform.tfvars` and modify as needed.

## Install

```sh
terraform apply
```
