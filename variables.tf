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
  default = "nichelangeloost"
}

variable "container_name" {
  type    = string
  default = "content"
}

variable "blob_name" {
  type    = string
  default = "my-awesome-content.zip"
}