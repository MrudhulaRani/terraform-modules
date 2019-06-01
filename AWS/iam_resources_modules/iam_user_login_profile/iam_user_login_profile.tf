resource "aws_iam_user_login_profile" "iam_user_login_profile" {
  pgp_key = "${var.pgp_key}"
  #(Required) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Only applies on resource creation. Drift detection is not possible with this argument.
  user = "${var.iam_user_name}"
}