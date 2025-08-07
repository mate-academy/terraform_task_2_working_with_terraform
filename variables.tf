variable "resource_group_name" {
  type    = string
  default = "example-resources"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "examplestoragemaksimens"
}

variable "container_name" {
  type    = string
  default = "example-container"
}

variable "blob_name" {
  type    = string
  default = "terraform_code_by_maks.zip"
}