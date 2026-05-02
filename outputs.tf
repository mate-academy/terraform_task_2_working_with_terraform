output "blob_id" {
  description = "The ID of the created blob"
  value       = azurerm_storage_blob.example.id
}

output "blob_url" {
  description = "The url of the created blob"
  value       = azurerm_storage_blob.example.url
}