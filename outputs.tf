output "blob_id" {
  value = azurerm_storage_blob.blob.id
}

output "blob_url" {
  value = "https://${azurerm_storage_account.sa.name}.blob.core.windows.net/${azurerm_storage_container.container.name}/${azurerm_storage_blob.blob.name}"
}
