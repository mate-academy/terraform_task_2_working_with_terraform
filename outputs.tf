output "storage_blob_id" {
  description = "ID of uploaded blob"
  value       = azurerm_storage_blob.blob.id
}

output "storage_blob_url" {
  description = "URL of uploaded blob"
  value       = azurerm_storage_blob.blob.url
}
