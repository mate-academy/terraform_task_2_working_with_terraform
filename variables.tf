variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location of the resources"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "container_name" {
  type        = string
  description = "The name of the storage container"
}

variable "blob_name" {
  type        = string
  description = "The name of the storage blob"
}
