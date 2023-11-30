output "instance_ip" {
  value = ["${aws_autoscaling_group.my_autoscale.arn}"]
}