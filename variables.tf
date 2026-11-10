variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Azure region for the resource group and the default for the storage account."
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Globally unique name of the Azure storage account."
  type        = string
  default     = "examplestorageacc"
}

variable "container_name" {
  description = "Name of the private storage container."
  type        = string
  default     = "terraform-code"
}

variable "blob_name" {
  description = "Name of the blob that contains the ZIP archive."
  type        = string
  default     = "terraform-code.zip"
}

variable "storage_account_location" {
  description = "Optional Azure region override for the storage account."
  type        = string
  default     = null
}
