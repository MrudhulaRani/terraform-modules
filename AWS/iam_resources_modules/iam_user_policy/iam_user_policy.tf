resource "aws_iam_user_policy" "iam_user_policy" {
  name = "${var.iam_policy_name}"
  policy = "${var.iam_policy_document_JSON_formatted_string}"
  user = "${var.iam_user_name}"
}