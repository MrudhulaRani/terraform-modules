resource "aws_iam_instance_profile" "iam_instance_profile" {
  name = "${var.iam_instance_profile_name}"
  path = "${var.iam_instance_profile_path}"
  role = "${var.iam_role_name}"
}