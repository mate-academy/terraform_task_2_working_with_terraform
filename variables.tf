variable "resource_group_name" {
  type        = string
  default     = "meta_terraform_task_2_rg"
  description = "Resource group Name"
}

variable "location_for_reg" {
  type        = string
  default     = "West Europe"
  description = "Location for the resources"
}

variable "storage_account_name" {
  type        = string
  default     = "gauptstrogeforterraform"
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
  description = "Blob Name"
}
