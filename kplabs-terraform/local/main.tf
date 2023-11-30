provider "aws" {
    region = "ap-south-1"
}

locals {
  common_tags = {
    Owner = "kuldip"
    service = "backend"
  }
}

resource "aws_instance" "dev" {
 ami = "ami-0a7cf821b91bcccbc"
 instance_type = "t2.micro"
 tags = local.common_tags
}

