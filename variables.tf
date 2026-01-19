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
  default = "kyrtfstoracc12345"
}

variable "container_name" {
  type    = string
  default = "tf-code"
}

variable "blob_name" {
  type    = string
  default = "terraform-code.zip"
}
