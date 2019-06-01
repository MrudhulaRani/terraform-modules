variable "iam_role_name" {}
variable "iam_role_description" {}
variable "iam_role_path" {}
variable "iam_role_tag-key" {}
variable "assume_role_policy" {}
#assume_role_policy = <<EOF
#{
#  "Version": "2012-10-17",
#"Statement": [
#{
#"Action": "sts:AssumeRole",
#"Principal": {
#"Service": "ec2.amazonaws.com"
#},
#"Effect": "Allow",
#"Sid": ""
#}
#]
#}
#EOF