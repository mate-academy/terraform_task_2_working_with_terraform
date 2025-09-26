data "archive_file" "example" {
  type        = "zip"
  source_dir  = "${path.module}/my-folder"
  output_path = "${path.module}/my-folder.zip"
}

resource "azurerm_resource_group" "example" {
  name     = var.azresource_group_name
  location = var.azregion
}

resource "azurerm_storage_account" "example" {
  name                     = var.azstorage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = var.azcontainer_name
  storage_account_name    = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = var.azblob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = data.archive_file.example.output_path
}
