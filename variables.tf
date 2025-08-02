variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
  default     = "example-resources"
}
variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "West Europe"
}
variable "storage_account_name" {
  description = "The name of the storage account to be created."
  type        = string
  default     = "examplestorageacc"
}
variable "container_name" {
  description = "The name of the blob container to be created."
  type        = string
  default     = "examplecontainer"
}
variable "blob_name" {
  description = "The name of the blob to be created."
  type        = string
  default     = "exampleblob.txt"
}