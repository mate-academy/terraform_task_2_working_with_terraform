variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Azure storage account"
}

variable "container_name" {
  type        = string
  description = "Name of the Azure storage container"
}

variable "blob_name" {
  type        = string
  description = "Name of the Azure storage blob"
}
