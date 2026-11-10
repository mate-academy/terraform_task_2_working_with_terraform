resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = coalesce(var.storage_account_location, azurerm_resource_group.example.location)
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

data "archive_file" "terraform_code" {
  type             = "zip"
  output_path      = abspath("${path.module}/terraform-code.zip")
  output_file_mode = "0644"

  dynamic "source" {
    for_each = fileset(path.module, "*.tf")

    content {
      filename = source.value
      content  = file("${path.module}/${source.value}")
    }
  }
}

resource "azurerm_storage_blob" "example" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  content_type           = "application/zip"
  source                 = data.archive_file.terraform_code.output_path
  content_md5            = data.archive_file.terraform_code.output_md5
}
