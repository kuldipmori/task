resource "aws_autoscaling_group" "my_autoscale" {
    launch_configuration = aws_launch_configuration.my_launch_conf.id
    availability_zones = "${var.azs}"
    max_size = 4
    min_size = 2
    desired_capacity = 3

    tag {
      key = "Name"
      value = "terraform-asg"
      propagate_at_launch = true
    }
}