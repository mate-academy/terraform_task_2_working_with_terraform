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
  description = "Storage account name"
  default     = "examplestorageacc"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
  default     = "example-container"
}

variable "blob_name" {
  type        = string
  description = "Name of the blob file"
  default     = "terraform_code.zip"
}
