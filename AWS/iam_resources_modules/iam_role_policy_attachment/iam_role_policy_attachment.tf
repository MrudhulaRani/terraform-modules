resource "aws_iam_role_policy_attachment" "iam_role_policy_attachment" {
  policy_arn = "${var.iam_policy_arn}"
  role = "${var.iam_role_name}"
}