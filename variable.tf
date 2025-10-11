variable "resource_group_name" {
  type    = string
  default = "mysecondtask"
}

variable "location" {
  type    = string
  default = "UK South"
}

variable "storage_account_name" {
  type    = string
  default = "mytasktf"
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