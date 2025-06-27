output "blob_id" {
  value     = azurerm_storage_blob.example.id
  sensitive = true
}

output "blob_url" {
  value = azurerm_storage_blob.example.url
}