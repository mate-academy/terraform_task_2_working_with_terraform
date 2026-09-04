output "storage_blob_id" {
  description = "The ID of the Storage Blob"
  value       = azurerm_storage_blob.example.id
}

output "storage_blob_url" {
  description = "The URL of the Storage Blob"
  value       = azurerm_storage_blob.example.url
}