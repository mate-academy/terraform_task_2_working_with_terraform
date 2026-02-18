terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.60.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1ebd7d31-c3ee-4475-b130-faa4fe9e9209"
}