terraform {
  required_version = ">= 0.13"
  required_providers {
    linode = {
      source = "linode/linode"
      # version = "..."
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

