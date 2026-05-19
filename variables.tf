variable "resource_group_name" {
  type        = string
  description = "The name of resource group"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "The Azure Region where the resources should exist"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account (Must be globally unique)"
}

variable "container_name" {
  type        = string
  description = "The name of the storage container"
}

variable "blob_name" {
  type        = string
  description = "The name of the storage blob"
}