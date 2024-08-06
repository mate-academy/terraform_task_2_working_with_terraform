variable "resource_group_name" {
  type    = string
  default = "Terraform_1_ResGroup"
}
variable "Region" {
  type    = string
  default = "UK South"
}
variable "storage_account_name" {
  type    = string
  default = "trfrmtask1yegor"
}
variable "container_name" {
  type    = string
  default = "storage-container"
}
variable "blob_name" {
  type    = string
  default = "archive"
}
