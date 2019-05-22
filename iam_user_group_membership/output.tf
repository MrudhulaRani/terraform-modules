output "name_of_the _users" {
  value = "${aws_iam_user_group_membership.iam_user_group_membership.user}"
}

output "list_of_the _groups" {
  value = "${aws_iam_user_group_membership.iam_user_group_membership.groups}"
}
