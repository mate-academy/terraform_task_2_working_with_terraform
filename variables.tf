variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
  default     = "example-resources"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
  default     = "swedencentral"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Azure Storage Account (must be globally unique, 3-24 lowercase letters/numbers)"
  default     = "stnamenikol2026"
}

variable "container_name" {
  type        = string
  description = "Name of the Storage Container"
  default     = "my-container"
}

variable "blob_name" {
  type        = string
  description = "Name of the Storage Blob (file)"
  default     = "example-blob.txt"
}