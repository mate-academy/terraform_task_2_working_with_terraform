variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "East US"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account (must be globally unique and lowercase)"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
}

variable "blob_name" {
  type        = string
  description = "Name of the storage blob"
}