output "iam_instance_profile_id" {
  value = "${aws_iam_instance_profile.iam_instance_profile.id}"
}

output "iam_instance_profile_name" {
  value = "${aws_iam_instance_profile.iam_instance_profile.name}"
}

output "iam_instance_profile_arn" {
  value = "${aws_iam_instance_profile.iam_instance_profile.arn}"
}

output "iam_instance_profile_unique_id" {
  value = "${aws_iam_instance_profile.iam_instance_profile.unique_id}"
}

output "iam_instance_profile_path" {
  value = "${aws_iam_instance_profile.iam_instance_profile.path}"
}