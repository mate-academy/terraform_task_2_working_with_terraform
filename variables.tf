variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "mate-terraform-resources"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West US"
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
  default     = "mateterraformstg2026"
}

variable "container_name" {
  description = "Storage container name"
  type        = string
  default     = "terraform-code"
}

variable "blob_name" {
  description = "Name of the storage blob"
  type        = string
  default     = "terraform-code.zip"
}
