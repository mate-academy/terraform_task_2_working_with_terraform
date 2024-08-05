terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "task1" {
  name     = var.resource_group_name
  location = var.Region
}

resource "azurerm_storage_account" "task1" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.task1.name
  location                 = azurerm_resource_group.task1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "task1" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.task1.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "task1" {
  name                   = var.blob_name
  storage_account_name   = var.storage_account_name
  storage_container_name = var.container_name
  type                   = "Block"
  source                 = "terraform_task_2_working_with_terraform.zip"
}
