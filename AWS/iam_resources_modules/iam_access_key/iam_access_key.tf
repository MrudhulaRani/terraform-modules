resource "aws_iam_access_key" "iam_access_key" {
  user = "${var.iam_user_name}"
  pgp_key = "${var.pgp_key}"
#(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists.
}