output "storage_blob_id" {
  value       = azurerm_storage_blob.blob.id
  description = "The ID of the storage blob"
}

output "storage_blob_url" {
  value       = azurerm_storage_blob.blob.url
  description = "The URL of the storage blob"
}