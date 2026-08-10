variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
  default     = "nazar-tf-task2-rg"
}

variable "location" {
  type        = string
  description = "Azure region for all resources"
  default     = "West Europe"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique Azure storage account name"
  default     = "nazartftask2sa"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
  default     = "content"
}

variable "blob_name" {
  type        = string
  description = "Name of the storage blob archive file (must end with .zip)"
  default     = "content.zip"
}
