variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name"
}

variable "container_name" {
  type        = string
  description = "Storage account container name"
}

variable "blob_name" {
  type        = string
  description = "Storage blob name"
}