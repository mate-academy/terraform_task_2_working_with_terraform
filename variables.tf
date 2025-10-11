variable "resource_group_name" {
  type    = string
  default = "mysecondtask"
}

variable "location" {
  type    = string
  default = "UK South"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account."

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 characters long, lowercase letters or numbers only."
  }
}


variable "container_name" {
  type    = string
  default = "mycontainerstorage"
}

variable "blob_name" {
  type    = string
  default = "blob"
}

variable "blob_source_path" {
  type    = string
  default = "some-local-file.zip"
}