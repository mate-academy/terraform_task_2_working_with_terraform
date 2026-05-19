output "storage_blob_id" {
  value       = azurerm_storage_blob.sb.id
  description = "The ID of the created Storage Blob."
}

output "storage_blob_url" {
  value       = azurerm_storage_blob.sb.url
  description = "The URL of the created Storage Blob."
}