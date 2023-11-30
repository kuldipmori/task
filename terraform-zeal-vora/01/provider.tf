provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "test-terraform-backend-kuldip"
  }
}