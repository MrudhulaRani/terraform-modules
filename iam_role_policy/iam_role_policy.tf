resource "aws_iam_role_policy" "iam_role_policy" {
  name = "${var.iam_role_policy_name}"
  policy = "${var.iam_policy_document_JSON_formatted_string}"
  role = "${var.iam_role_id}"
}