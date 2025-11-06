terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
}

provider "azurerm" {
  features {}

  # ЯВНО:
  subscription_id = "7c43b80f-286d-4af9-9c5f-c34a65078107"
  tenant_id       = "dc2e9dea-18de-47c9-a622-68c6067d0c69"
}
