output "public_ip" {
  value = aws_instance.myserver.public_ip
}

output "ebs_arn" {
  value = aws_ebs_volume.myebs.arn
}

output "ec2_sg" {
  value = aws_security_group.webserver_sg.name
}