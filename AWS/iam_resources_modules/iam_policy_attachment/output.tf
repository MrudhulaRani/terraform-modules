output "iam_policy_attachment_name" {
  value = "${aws_iam_policy_attachment.iam_policy_attachment.name}"
}
output "iam_policy_attachment_id" {
  value = "${aws_iam_policy_attachment.iam_policy_attachment.id}"
}