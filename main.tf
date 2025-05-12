terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

data "archive_file" "terraform_code_zip" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/terraform_code.zip"
}


resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group
  location = var.azlocation
}

resource "azurerm_storage_account" "example" {
  name                     = var.azurerm_storage_account
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = var.azurerm_storage_container
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = var.azurerm_storage_blob
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = data.archive_file.terraform_code_zip.output_path
}
