variable "resource_group_name" {
  type    = string
  default = "task2_rg"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "mykytastoragetsk2"
}

variable "container_name" {
  type    = string
  default = "tf-conteiner"
}

variable "blob_name" {
  type    = string
  default = "code.zip"
}