
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.sa.id
  container_access_type = "private"
}

data "archive_file" "terraform_code" {
  type        = "zip"
  source_dir  = path.module                # пакує всі файли в цій теці
  output_path = "${path.module}/terraform.zip"
}


resource "azurerm_storage_blob" "code_blob" {
  name                   = var.blob_name
  storage_account_name   = var.storage_account_name
  storage_container_name = azurerm_storage_container.container.name

  type        = "Block"
  source      = data.archive_file.terraform_code.output_path
  content_type = "application/zip"
}
