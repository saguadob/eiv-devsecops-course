terraform {
  cloud {
    organization = "devsecopseiv22"

    workspaces {
      name = "infra"
    }
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.7"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "2.0.0-preview-3"
    }
  }
}

provider "azurerm" {
  use_msi = false
  # subscription_id = Configured in TF Cloud Env Vars.
  # client_id       = Configured in TF Cloud Env Vars.
  # client_secret   = Configured in TF Cloud Env Vars.
  # tenant_id       = Configured in TF Cloud Env Vars.
  features {}
}
