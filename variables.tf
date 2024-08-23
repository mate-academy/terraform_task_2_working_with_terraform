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
  default = "okexamplestorageacc"
}

variable "container_name" {
  type    = string
  default = "acctestcont"
}

variable "blob_name" {
  type    = string
  default = "my-awesome-content.zip"
}
