variable "resource_group_name" {
  type    = string
  default = "example-resources"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "storage_account_name" {
  type    = string
  default = "examplestorageacc1234"
}

variable "container_name" {
  type    = string
  default = "example-container"
}

variable "blob_name" {
  type    = string
  default = "example-blob"
}
