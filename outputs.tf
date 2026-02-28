output "storage_blob_id" {
  value       = azurerm_storage_blob.mate.id
  description = "ID of create storage blob"
}

output "storage_blob_url" {
  value       = azurerm_storage_blob.mate.url
  description = "URL of create storage blob"
}
