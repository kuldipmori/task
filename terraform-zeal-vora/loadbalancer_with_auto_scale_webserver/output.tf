output "dns_name_elb" {
  value = ["${aws_elb.load_balancer.dns_name}"]
}

