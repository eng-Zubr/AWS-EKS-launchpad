# Check Terraform version
terraform {
  required_version = ">= 0.14.0"

}

# Configure the AWS Provider
provider "aws" {
  region           = var.aws_region
  profile          = var.aws_profile
}
