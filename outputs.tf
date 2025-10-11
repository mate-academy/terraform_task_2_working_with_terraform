output "blob_id" {
  value       = azurerm_storage_blob.example.id
  description = "ID of the blob"
}

output "blob_url" {
  value       = "https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}/${azurerm_storage_blob.example.name}"
  description = "URL of the blob"
}
