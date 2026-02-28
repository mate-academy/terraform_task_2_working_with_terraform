data "archive_file" "terraform_code" {
  type        = "zip"
  output_path = "${path.module}/terraform-code.zip"

  source {
    content  = file("${path.module}/data.tf")
    filename = "data.tf"
  }

  source {
    content  = file("${path.module}/main.tf")
    filename = "main.tf"
  }

  source {
    content  = file("${path.module}/outputs.tf")
    filename = "outputs.tf"
  }

  source {
    content  = file("${path.module}/provider.tf")
    filename = "provider.tf"
  }

  source {
    content  = file("${path.module}/variables.tf")
    filename = "variables.tf"
  }

  source {
    content  = file("${path.module}/terraform.tfvars")
    filename = "variables.tfvars"
  }
}
