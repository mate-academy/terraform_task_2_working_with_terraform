output "host" {
  value = azurerm_storage_account.example.primary_blob_host
}

output "blob_id" {
  value = azurerm_storage_blob.example.id
}

output "blob_url" {
  value = azurerm_storage_blob.example.url
}