output "Blob_id" {
  value = azurerm_storage_blob.blob.id
  sensitive = true
}
output "Blob_URL" {
  value = azurerm_storage_blob.blob.url
  sensitive = true
}