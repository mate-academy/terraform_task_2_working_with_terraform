variable "resource_group_name" {
  type    = string
  default = "salabam-rg"
}

variable "location" {
  type    = string
  default = "North Europe"
}

variable "storage_account_name" {
  type    = string
  default = "salabamstorageacc"
}

variable "container_name" {
  type    = string
  default = "salabamcontainer"
}

variable "blob_name" {
  type    = string
  default = "salabamblob"
}