resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

data "archive_file" "tf_code" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/terraform_code.zip"

  excludes = [
    ".terraform/**",
    ".git/**",
    "terraform.tfstate",
    "terraform.tfstate.*",
    "tfplan",
    "terraform_code.zip"
  ]
}

resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = data.archive_file.tf_code.output_path

  content_md5 = data.archive_file.tf_code.output_md5
}
