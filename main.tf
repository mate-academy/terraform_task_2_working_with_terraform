# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create Storage Account
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create Storage Container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name    = azurerm_storage_account.sa.name
  container_access_type = "private"
}

# Archive the directory with Terraform code
data "archive_file" "tf_code_archive" {
  type        = "zip"
  source_dir  = "${path.module}/"
  output_path = "${path.module}/terraform_code.zip"

  # Exclude generated files to avoid circular dependencies and state bloat
  excludes = [
    "terraform_code.zip",
    "tfplan",
    ".terraform",
    ".terraform.lock.hcl",
    "terraform.tfstate",
    "terraform.tfstate.backup"
  ]
}

# Define the archive as a source in the storage blob section
resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = data.archive_file.tf_code_archive.output_path
}