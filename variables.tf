variable "resource_group_name" {
  type        = string
  default     = "mate-terraform-task-2-rg"
  description = "Resource group Name"
}

variable "location_for_rg" {
  type        = string
  default     = "West Europe"
  description = "Location for the resources"
}

variable "storage_account_name" {
  type        = string
  default     = "yaasstorageforterraform"
  description = "Storage account Name"
}

variable "container_name" {
  type        = string
  default     = "content"
  description = "Container Name"
}

variable "blob_name" {
  type        = string
  default     = "my-awesome-content.zip"
  description = "Blob name"
}

