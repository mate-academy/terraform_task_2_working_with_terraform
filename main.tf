terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_tier
}

resource "azurerm_storage_container" "name" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.account.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "name" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.account.name
  type                   = var.blob_type
  storage_container_name = azurerm_storage_container.name.name
  source                 = var.blob_source
}