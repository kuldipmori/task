provider "aws" {
    region = "ap-south-1" 
}

resource "aws_eip" "lb" {
  domain = "vpc"
}   

output "elastic-ip" {
    value = aws_eip.lb
}