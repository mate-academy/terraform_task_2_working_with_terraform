variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "resourcestask2"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "storagetask2"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "containertask2"
}

variable "blob_name" {
  description = "The name of the blob"
  type        = string
  default     = "blobtask2"
}
