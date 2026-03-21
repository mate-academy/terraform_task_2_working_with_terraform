output "storage_blob_id" {
  value       = azurerm_storage_blob.example.id
  description = "ID созданного блоба"
}

output "storage_blob_url" {
  value       = azurerm_storage_blob.example.url
  description = "Прямая ссылка на файл в Azure"
}