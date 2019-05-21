resource "aws_iam_group" "iam_group_1" {
  name = "${var.iam_group_1_name}"
  path = "${var.iam_group_1_path_url}"
}