terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "blob"
}

data "archive_file" "terraform_code" {
  type        = "zip"
  source_dir  = "./"
  excludes    = [".terraform", var.blob_name]
  output_path = "terraform_code.zip"
}

resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = data.archive_file.terraform_code.output_path
}
