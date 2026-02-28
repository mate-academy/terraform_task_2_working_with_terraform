resource "azurerm_resource_group" "mate" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "mate" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.mate.name
  location                 = azurerm_resource_group.mate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "mate" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.mate.id
  container_access_type = "private"
}

resource "azurerm_storage_blob" "mate" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.mate.name
  storage_container_name = azurerm_storage_container.mate.name
  type                   = "Block"
  source                 = data.archive_file.terraform_code.output_path
}
