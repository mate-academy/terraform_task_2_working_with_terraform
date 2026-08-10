output "storage_blob_id" {
  description = "ID of the uploaded storage blob"
  value       = azurerm_storage_blob.example.id
}

output "storage_blob_url" {
  description = "URL of the uploaded storage blob"
  value       = azurerm_storage_blob.example.url
}
