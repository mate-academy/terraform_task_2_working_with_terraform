# 1) RG — якщо вже створений цим же кодом, залишай як є.
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# 2) Storage Account — ти щойно створив
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# 3) Контейнер
resource "azurerm_storage_container" "c" {
  name                  = var.container_name
  container_access_type = "private"
  storage_account_id    = azurerm_storage_account.example.id # <— оце ключове
}


# 4) Зібрати ZIP із коду (використовуємо data-джерело archive_file)
data "archive_file" "code_zip" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/artifacts/code.zip"

  excludes = [
    ".terraform", ".terraform/*",
    "*.tfstate", "*.tfstate.*",
    "*.tfplan",
    "artifacts", "artifacts/*",
    ".git", ".git/*"
  ]
}

# 5) Залити ZIP як blob
resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.c.name
  type                   = "Block"
  source                 = data.archive_file.code_zip.output_path
  content_type           = "application/zip"
}
