resource "aws_iam_user_ssh_key" "iam_user_ssh_key" {
  encoding = "${var.public_key_encoding_format_SSH_or_PEM}"
  public_key = "${var.publik_key_encoded_in_ssh_rsa_format_or_PEM_format}"
  username = "${var.iam_user_name}"
  status = "Active"
}