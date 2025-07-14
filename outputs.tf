output "storage_blob_id" {
  description = "The ID of the uploaded blob"
  value       = azurerm_storage_blob.code_blob.id
}

output "storage_blob_url" {
  description = "The URL of the uploaded blob"
  value       = azurerm_storage_blob.code_blob.url
}