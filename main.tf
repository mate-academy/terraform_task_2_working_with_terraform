resource "azurerm_resource_group" "terraform_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraform_rg.name
  location                 = azurerm_resource_group.terraform_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

data "archive_file" "tf_code_zip" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/terraform_code.zip"
  excludes    = [
    "terraform_code.zip",
    ".terraform",
    ".terraform.lock.hcl",
    "terraform.tfstate",
    "terraform.tfstate.backup",
    "tfplan"
    ]
}

resource "azurerm_storage_blob" "sb" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
  source                 = data.archive_file.tf_code_zip.output_path
}