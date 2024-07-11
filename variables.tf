variable "resource_group_name" {
  type        = string
  description = "Name of Resource group"
}

variable "location" {
  type        = string
  description = "Location for RG"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "container_name" {
  type        = string
  description = "Name of the container account"
}

variable "blob_name" {
  type        = string
  description = "Name of the blob storage"
}
