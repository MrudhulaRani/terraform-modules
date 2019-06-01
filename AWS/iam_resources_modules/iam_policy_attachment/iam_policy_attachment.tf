resource "aws_iam_policy_attachment" "iam_policy_attachment" {
  name = "${var.iam_policy_attachment_name}"
  policy_arn = "${var.iam_policy_arn}"
  users      = ["${var.iam_user_name}"]
  roles      = ["${var.iam_role_name}"]
  groups     = ["${var.iam_group_name}"]

}