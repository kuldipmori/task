resource "aws_iam_role" "iamrole" {
  name = "ec2-role"

  assume_role_policy = <<-EOF
        {
           "Version":"2012-10-17",
           "Statement":[
              {
                 "Action":"sts:AssumeRole",
                 "Principal":{
                    "Service":"ec2.amazonaws.com"
                 },
                 "Effect":"Allow",
                 "Sid":""
              }
           ]
        }
    EOF

  tags = {
    name = "ec2-role"
  }
}

resource "aws_iam_policy" "s3-policy" {
  name        = "s3-bucket-policy"
  path        = "/"
  description = "S3 policy for Instance"

  policy = <<-EOF
        {
           "Version":"2012-10-17",
           "Statement":[
              {
                 "Action":[
                    "s3:*"
                 ],
                 "Effect":"Allow",
                 "Resource":"*"
              }
           ]
        }
    EOF
}

resource "aws_iam_role_policy_attachment" "s3_policy_attach" {
  role       = aws_iam_role.iamrole.name
  policy_arn = aws_iam_policy.s3-policy.arn


}

resource "aws_iam_instance_profile" "iam_state_profile" {
  name = "test_profile"
  role = aws_iam_role.iamrole.name
}