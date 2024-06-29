variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "examplestorageacc"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "example-container"
}

variable "blob_name" {
  description = "The name of the blob"
  type        = string
  default     = "example-blob"
}
