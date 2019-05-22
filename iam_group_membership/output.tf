output "iam_group_membership_name" {
  value = "${aws_iam_group_membership.iam_group_membership.name}"
}

output "iam_group_membership_group_name" {
  value = "${aws_iam_group_membership.iam_group_membership.group}"
}

output "iam_group_membership_list_of_users" {
  value = "${aws_iam_group_membership.iam_group_membership.users}"
}