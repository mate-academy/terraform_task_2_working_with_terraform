variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "terraform_task2"
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
  default     = "westus2"
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
  default     = "mybox4"
}

variable "container_name" {
  description = "The name of the Storage Container"
  type        = string
}

variable "blob_name" {
  description = "The name of the Blob"
  type        = string
}
