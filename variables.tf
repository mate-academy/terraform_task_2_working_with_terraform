variable "resource_group_name" {
  type    = string
  default = "mate-terraform-task-2-rg"
}

variable "location_for_rg" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "yaasstorageforterraform"
}

variable "container_name" {
  type    = string
  default = "content"
}

variable "blob_name" {
  type    = string
  default = "my-awesome-content.zip"
}

