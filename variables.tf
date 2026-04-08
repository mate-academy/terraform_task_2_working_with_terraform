variable "resource_group_name" {
  type    = string
  default = "test-resources"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "prydolobasacc"
}

variable "container_name" {
  type    = string
  default = "test-container"
}

variable "blob_name" {
  type    = string
  default = "blob.zip"
}
