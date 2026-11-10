output "blob_id" {
  description = "ID of the uploaded storage blob."
  value       = azurerm_storage_blob.example.id
}

output "blob_url" {
  description = "URL of the uploaded blob in the private container."
  value       = azurerm_storage_blob.example.url
}
