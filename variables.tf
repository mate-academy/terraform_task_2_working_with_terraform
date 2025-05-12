variable "azurerm_resource_group" {
  type    = string
  default = "example-resources"
}

variable "azlocation" {
  type    = string
  default = "West Europe"
}

variable "azurerm_storage_account" {
  type    = string
  default = "examplestorakonstantinou"
}

variable "azurerm_storage_container" {
  type    = string
  default = "konstantinouexample"
}

variable "azurerm_storage_blob" {
  type    = string
  default = "terraform_code.zip"
}