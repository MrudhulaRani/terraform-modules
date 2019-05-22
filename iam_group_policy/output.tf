output "iam_group_policy_id" {
  value = "${aws_iam_group_policy.iam_group_policy.id}"
}

output "iam_group_policy_group" {
  value = "${aws_iam_group_policy.iam_group_policy.group}"
}

output "iam_group_policy_policy_document" {
  value = "${aws_iam_group_policy.iam_group_policy.policy}"
}

output "iam_group_policy_policy_name" {
  value = "${aws_iam_group_policy.iam_group_policy.name}"
}