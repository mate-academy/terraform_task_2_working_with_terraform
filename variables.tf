variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "my-terraform-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Name of the storage account (must be globally unique)"
  type        = string
  default     = "mytfstorageacc001"
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
  default     = "my-terraform-container"
}

variable "blob_name" {
  description = "Name of the storage blob"
  type        = string
  default     = "my-example-blob.txt"
}