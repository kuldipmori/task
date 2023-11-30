provider "aws" {
    region = "ap-south-1"
}

resource "aws_iam_user" "iam_test" {
    name = "iamuser.${count.index}"
    count = 3 
    path = "/system/"
}

# output "arns" {
#     value = aws_iam_user.iam_test[*].arn
# }

# output "name" {
#     value = aws_iam_user.iam_test[*].name
# }

output "combine" {
    value = zipmap(aws_iam_user.iam_test[*].name, aws_iam_user.iam_test[*].arn)
}

