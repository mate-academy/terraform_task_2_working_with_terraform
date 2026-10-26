variable "resource_group_name" {
  type    = string
  default = "mate-olenanosenko-terraform-task-2-rg"
}

variable "location" {
  type    = string
  default = "Denmark East"
}

variable "storage_account_name" {
  type    = string
  default = "task2tfstorage"
}

variable "container_name" {
  type    = string
  default = "task-2-terraform-code"
}

variable "blob_name" {
  type    = string
  default = "task-2-terraform_code.zip"
}