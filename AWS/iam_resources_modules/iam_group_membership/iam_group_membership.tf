resource "aws_iam_group_membership" "iam_group_membership" {
  group = "${var.iam_group_name}"
  name = "${var.iam_group_membership_name}"
  users = ["${var.iam_user_name}"]
}