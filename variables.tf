variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "North Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "examplestor9ed9fd83"
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
