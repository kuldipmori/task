provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWXZVSBFV7WIWTUVY"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-08e5424edfe926b43"
  instance_type = "t2.micro"

  tags = {
    Name = "create_with_tf"
  }


}