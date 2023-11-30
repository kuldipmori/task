####################
# AWS-VPC
####################

resource "aws_vpc" "main_vpc" {
  cidr_block           = var.cidr_vpc_ip
  enable_dns_hostnames = true

  tags = {
    Name    = "project-vpc" # Name of VPC with this tag
    project = "networking"
  }
}

####################
# AWS-PRIVATE-SUBNET
####################

resource "aws_subnet" "private_subnet_01" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.118.8.128/25"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-south-1a"
  tags = {
    name = "private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_02" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.118.9.128/25"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-south-1b"
  tags = {
    name = "private-subnet-2"
  }
}

####################
# AWS-PUBLIC-SUBNET
####################

resource "aws_subnet" "public_subnet_01" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.118.8.0/25"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1a"
  tags = {
    name = "public_subnet_01"
  }
}

resource "aws_subnet" "public_subnet_02" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.118.9.0/25"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1b"
  tags = {
    name = "public_subnet_02"
  }
}

####################
# AWS-INTERNET-GATEWAY
####################

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    name = "internet_gateway"
  }
}

####################
# AWS-ROUTE-TABLE
####################

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    name = "route-table"
  }

}

####################
# AWS-ROUTE-TABLE-ASSOSIATE
####################

resource "aws_route_table_association" "rt_public_1" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "rt_public_2" {
  subnet_id      = aws_subnet.public_subnet_02.id
  route_table_id = aws_route_table.route_table.id
}

####################
# AWS-EIP
####################

resource "aws_eip" "eip" {
  domain = "vpc"
}

####################
# AWS-NAT-GATEWAY
####################

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet_01.id
  depends_on    = [aws_internet_gateway.ig]
  tags = {
    name = "nat-gw"
  }
}   