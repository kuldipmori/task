provider "aws" {
    region = "ap-south-1"
}

variable "istest" {
}

resource "aws_instance" "dev" {
 ami = ami-0a7cf821b91bcccbc
 instance_type = t2.micro
 count = var.istest == true ? 1 : 0 
}


resource "aws_instance" "prod" {
 ami = ami-0a7cf821b91bcccbc
 instance_type = t2.large
 count = var.istest == false ? 1 : 0
}