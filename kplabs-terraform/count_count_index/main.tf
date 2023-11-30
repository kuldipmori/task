provider "aws" {
    region = "ap-south-1"
}

resource "aws_iam_user" "lb" {
    name = var.elb_name[count.index]
    count = 3
    path = "/system/"
}
