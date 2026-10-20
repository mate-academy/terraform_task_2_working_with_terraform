variable "resource_group_name" {
  type    = string
  default = "example-resources"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "storage_account_name" {
  type    = string
  default = "examplestorageacc"
}

variable "container_name" {
  type    = string
  default = "examplecontainer"
}

variable "blob_name" {
  type    = string
  default = "exampleblob"
}