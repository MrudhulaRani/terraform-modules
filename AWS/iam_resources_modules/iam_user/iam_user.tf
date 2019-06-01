resource "aws_iam_user" "iam_user" {
  name = "${var.iam_user_name}"
  path = "${var.iam_user_path}"
  tags {
    tag-key = "${var.iam_user_tag-value}"
  }
}