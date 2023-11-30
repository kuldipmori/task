output "vpc" {
  value = aws_vpc.main_vpc.id
}

output "eip" {
  value = aws_eip.eip.id
}

output "public_subnet_01" {
  value = aws_subnet.public_subnet_01.arn
}

output "public_subnet_02" {
  value = aws_subnet.public_subnet_02.arn
}

output "private_subnet_01" {
  value = aws_subnet.private_subnet_01.arn
}
output "private_subnet_02" {
  value = aws_subnet.public_subnet_02.arn
}

output "internet_gateway" {
  value = aws_internet_gateway.ig.arn
}