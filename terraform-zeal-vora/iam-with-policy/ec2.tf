resource "aws_instance" "myserver" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.instance_key
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  iam_instance_profile   = "${aws_iam_instance_profile.iam_state_profile.name}"

  user_data = <<EOF
        #!/bin/bash -xe
        cd /home/ubuntu
        ls -lah
        current_user=$(whoami)
        echo "Current user: $current_user" >> User_Details.txt  
  EOF

  # provisioner "local-exec" {
  # command = "ansible-playbook -i '${self.public_ip},' -u ubuntu -i ~/aws/test.pem /home/einfochips/course/new-tf/01/ansible/mysql_database.yaml"
  # }

}