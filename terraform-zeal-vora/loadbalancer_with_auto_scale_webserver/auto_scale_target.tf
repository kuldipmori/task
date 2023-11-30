resource "aws_autoscaling_policy" "autoscale_policy" {
    name = "webserver_autoscale_policy"
    policy_type = "TargetTrackingScaling"
    autoscaling_group_name = "${aws_autoscaling_group.my_autoscale.name}"    
    target_tracking_configuration {
      predefined_metric_specification {
        predefined_metric_type = "ASGAverageCPUUtilization"
      }
      target_value = 60
    }

}    