variable "resource_group_name" {
  description = "Name of the RG"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "storage_account_name" {
  description = "Globally unique SA name (3–24, lowercase+digits)"
  type        = string
  default     = "vitaliytfsa20251106" # або винеси у tfvars
}

variable "container_name" {
  description = "Container name"
  type        = string
  default     = "artifacts"
}

variable "blob_name" {
  description = "Blob name"
  type        = string
  default     = "code.zip"
}
