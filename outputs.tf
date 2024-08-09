output "primarykey" {
  value     = azurerm_storage_account.Tf_Task_St_Container.primary_access_key
  sensitive = true
}

output "host" {
  value     = azurerm_storage_account.Tf_Task_St_Container.primary_blob_host
  sensitive = true
}
