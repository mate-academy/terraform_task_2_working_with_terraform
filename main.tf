terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "Tf_Task_St_Container" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "Tf_Task_St_Container" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.Tf_Task_St_Container.name
  location                 = azurerm_resource_group.Tf_Task_St_Container.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "Tf_Task_St_Container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.Tf_Task_St_Container.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "Tf_Task_St_Container" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.Tf_Task_St_Container.name
  storage_container_name = azurerm_storage_container.Tf_Task_St_Container.name
  type                   = "Block"
  source                 = data.archive_file.Tf_Task_St_Container.output_path
}

data "archive_file" "Tf_Task_St_Container" {
  type        = "zip"
  output_path = "${path.module}/files.zip"

  source {
    content  = "placeholder"
    filename = "placeholder.txt"
  }
}
