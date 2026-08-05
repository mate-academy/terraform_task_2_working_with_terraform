output "blob_id" {
  description = "The ID of the storage blob"
  value       = azurerm_storage_blob.example.id
}

output "blob_url" {
  description = "The URL of the storage blob"
  value       = azurerm_storage_blob.example.url
}