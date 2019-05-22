resource "aws_iam_group_policy" "iam_group_policy" {
  group = "${var.iam_group_id}"
  name = "${var.iam_policy_name}"
  policy = "${var.iam_policy_document_JSON_formatted_string}"
}