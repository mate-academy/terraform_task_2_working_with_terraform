output "blob_id" {
  description = "ID of the storage blob"
  value       = azurerm_storage_blob.example.id
}

output "blob_url" {
  description = "URL of the storage blob"
  value       = azurerm_storage_blob.example.url
}
