variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "examplestorageaccbod3171"
}

variable "container_name" {
  description = "The name of the container"
  type        = string
  default     = "vhds"
}

variable "blob_name" {
  description = "The name of the blob"
  type        = string
  default     = "my-awesome-content.zip"
}