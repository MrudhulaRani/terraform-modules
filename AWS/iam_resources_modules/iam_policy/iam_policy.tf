resource "aws_iam_policy" "iam_policy" {
  name = "${var.iam_policy_name}"
  path = "${var.iam_policy_path_url}"
  description = "${var.iam_policy_description}"
  policy = "${var.iam_policy_document_JSON_formatted_string}"
}