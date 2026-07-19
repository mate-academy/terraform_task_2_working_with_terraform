variable "resource_group_name" {
  type    = string
  default = "diana-advanced-rg"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "dianapomidor2026adv"
}

variable "container_name" {
  type    = string
  default = "my-container"
}

variable "blob_name" {
  type    = string
  default = "project-source.zip"
}