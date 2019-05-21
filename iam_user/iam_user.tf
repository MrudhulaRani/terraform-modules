resource "aws_iam_user" "iam_user_1" {
  name = "${var.iam_user_name}"
  tags {
    tag-key = "${var.user_tag-value}"
  }
}