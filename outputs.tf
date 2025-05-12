output "azurerm_storage_blob_id" {
  description = "The ID of the storage blob."
  value       = azurerm_storage_blob.example.id
}

output "azurerm_storage_blob_url" {
  description = "The URL of the storage blob."
  value       = azurerm_storage_blob.example.url
}

