# main.tf

# Define the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Backend configuration for remote state
terraform {
  backend "s3" {
    bucket = "my-tf-state-bucket"
    key    = "ecommerce-app/terraform.tfstate"
    region = "us-west-2"
  }
}
