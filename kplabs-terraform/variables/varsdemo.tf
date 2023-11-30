provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "var_demo" {
  name = "test-variable-sg"

  ingress {
    description = "for SSL"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  egress {
    description = "for HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }


}