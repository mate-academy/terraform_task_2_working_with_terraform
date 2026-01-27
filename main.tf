resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "st_acc" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "az_cont" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.st_acc.name
  container_access_type = "private"
}

data "archive_file" "project_zip" {
  type        = "zip"
  source_dir  = "${path.module}/."
  output_path = "${path.module}/project.zip"
  excludes = [
    ".terraform/**",
    ".git/**",
    "terraform.tfstate",
    "terraform.tfstate.*",
    "tfplan",
    "project.zip"
  ]
}


resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.st_acc.name
  storage_container_name = azurerm_storage_container.az_cont.name
  type                   = "Block"
  source                 = data.archive_file.project_zip.output_path
  content_md5            = data.archive_file.project_zip.output_md5
}