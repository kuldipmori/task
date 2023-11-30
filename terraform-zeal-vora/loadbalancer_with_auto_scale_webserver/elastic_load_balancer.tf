resource "aws_elb" "load_balancer" {
    name = "terraform-elb"
    availability_zones = "${var.azs}"
    security_groups = ["${aws_security_group.webserver_sg.id}"]
    listener {
      lb_port = 80
      lb_protocol = "${var.elb_listner_protocol}"
      instance_port = "${var.http_port}"
      instance_protocol = "${var.elb_listner_protocol}"
    }

    health_check {
      healthy_threshold = 2
      unhealthy_threshold = 2
      timeout = 3
      interval = 30
      target = "HTTP:${var.http_port}/"
    }
}
