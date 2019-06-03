output "encrypted_secret" {
  value = "${aws_iam_access_key.iam_access_key.encrypted_secret}"
}

output "access_key_id" {
  value = "${aws_iam_access_key.iam_access_key.id}"
}