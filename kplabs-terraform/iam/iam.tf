provider "aws" {
    region = "ap-south-1"
}

resource "aws_iam_user" "test_terraform" {
    name = "test_terraform_iam"
}