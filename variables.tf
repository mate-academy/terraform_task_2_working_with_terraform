variable "resource_group_name" {
  default = "example-resources"
  type    = string
}

variable "location" {
  default = "West Europe"
  type    = string
}

variable "storage_account_name" {
  default = "examplestorageacc"
  type    = string
}

variable "container_name" {
  default = "example-container"
  type    = string
}

variable "blob_name" {
  default = "example-blob"
  type    = string
}
