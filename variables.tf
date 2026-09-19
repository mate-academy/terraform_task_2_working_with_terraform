variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Name of the Azure storage account"
  type        = string
  default     = "examplestorageacc"
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
  default     = "example-container"
}

variable "blob_name" {
  description = "Name of the storage blob"
  type        = string
  default     = "terraform-code.zip"
}
