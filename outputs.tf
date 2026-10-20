output "id_storage_blob" {
  description = "The ID of the uploaded Terraform archive blob."
  value       = azurerm_storage_blob.archive.id
}

output "url_blob" {
  description = "The URL of the uploaded Terraform archive blob."
  value       = azurerm_storage_blob.archive.url
}
