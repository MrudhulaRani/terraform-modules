resource "aws_iam_user_group_membership" "iam_user_group_membership" {
  groups = ["${var.iam_group_name}"]
  user = "${var.iam_user_name}"
}