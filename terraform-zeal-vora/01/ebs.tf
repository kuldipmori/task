resource "aws_ebs_volume" "myebs" {
  availability_zone = var.azs
  size              = 30
  type              = "gp2"
  tags = {
    Name = "myserver_ebs"
  }
}

resource "aws_volume_attachment" "myebd-attach" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.myebs.id
  instance_id = aws_instance.myserver.id
}