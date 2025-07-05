variable "resource_group_name" {
    type=string
    default="levandrii-rg"
}
variable "location" {
    type=string
    default="westeurope"
}
variable "storage_account_name" {
    type=string
    default="levandriistorage"
}
variable "container_name" {
    type=string
    default = "levandrii-container"
}
variable "blob_name" {
    type=string
    default = "archive.zip"
}
