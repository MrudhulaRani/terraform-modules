resource "aws_iam_role" "iam_role" {
  name = "${var.iam_role_name}"
  description = "${var.iam_role_description}"
  path = "${var.iam_role_path}"
  assume_role_policy = "${var.assume_role_policy}"
  tags {
    tag-key = "${var.iam_role_tag-key}"
  }
}