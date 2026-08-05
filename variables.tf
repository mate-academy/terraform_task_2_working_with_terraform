variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "example-resources"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
  default     = "examplestorageaccclem"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
  default     = "vhds"
}

variable "blob_name" {
  type        = string
  description = "Name of the storage blob"
  default     = "terraform-code.zip"
}