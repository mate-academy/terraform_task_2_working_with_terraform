variable "resource_group_name" {
  description = "The name of the RG"
  type        = string
  default     = "ikrgtftask2"
}

variable "location" {
  description = "The Azure region, RG will be created"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "iktask2storage"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "iktask2container"
}

variable "blob_name" {
  description = "The name of the blob"
  type        = string
  default     = "task2-blob"
}
