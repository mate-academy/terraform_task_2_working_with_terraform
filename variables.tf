variable "resource_group_name" {
  default = "d4vp-terraform-rg"
}

variable "location" {
  default = "West Europe"
}

variable "storage_account_name" {
  default = "danylod4vpstorage" 
}

variable "container_name" {
  default = "tf-content"
}

variable "blob_name" {
  default = "code-backup.zip"
}