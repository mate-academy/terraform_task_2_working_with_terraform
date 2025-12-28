data "archive_file" "terraform_code" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/terraform_code.zip"

  excludes = [
    ".terraform",
    ".terraform/**",
    "terraform.tfstate",
    "terraform.tfstate.lock.info",
    "terraform_code.zip",
    "tfplan"
  ]
}
