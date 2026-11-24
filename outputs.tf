output "primarykey" {
  value     = azurerm_storage_account.example.primary_access_key
  sensitive = true
}

output "hostname" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}