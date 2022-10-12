# Configure the Microsoft Azure Provider

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.11.1"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.2.0"
    }
  }
  required_version = ">= 0.13"
  backend "azurerm" {
    resource_group_name  = "gitops-tfstate"
    storage_account_name = "gitopstfstatedemo"
    container_name       = "gitops"
    key                  = "tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "kubectl" {
  host                   = module.aks.aks_cluster_kube_config.0.host
  client_certificate     = base64decode(module.aks.aks_cluster_kube_config.0.client_certificate)
  client_key             = base64decode(module.aks.aks_cluster_kube_config.0.client_key)
  cluster_ca_certificate = base64decode(module.aks.aks_cluster_kube_config.0.cluster_ca_certificate)
  load_config_file       = false
}

provider "kubernetes" {
  host                   = module.aks.aks_cluster_kube_config.0.host
  client_certificate     = base64decode(module.aks.aks_cluster_kube_config.0.client_certificate)
  client_key             = base64decode(module.aks.aks_cluster_kube_config.0.client_key)
  cluster_ca_certificate = base64decode(module.aks.aks_cluster_kube_config.0.cluster_ca_certificate)
}
