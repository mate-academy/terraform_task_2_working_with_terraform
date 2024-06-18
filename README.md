# Creating an Azure Storage Container and Uploading a Blob

This task involves defining additional resources, organizing the Terraform code into multiple files, and using variables and outputs.

## Prerequisites

- Basic understanding of Terraform and Azure.
- Terraform installed on your machine.
- Azure CLI installed and configured.

## Hands-on Task: Working with Terraform — Advanced Configuration

1. Fork this repository.
2. Create an Azure Storage Container.
3. Define a Storage Blob for the given Container.
4. Define a variable for `resource_group_name`, `location`, `storage_account_name`, `container_name`, and `blob_name` in a `variables.tf` file.
5. Move provider code from `main.tf` to `provider.tf`.
6. Provide the ID of the storage blob and the URL of the blob in `outputs.tf`.
7. Archive the directory with Terraform code.
8. Define the archive as a source in the storage blob section.
9. Plan and apply Terraform changes using the `tfplan` file.
