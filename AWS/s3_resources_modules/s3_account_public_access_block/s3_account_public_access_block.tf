resource "aws_s3_account_public_access_block" "s3_account_public_access_block" {
  account_id = "${var.aws_account_id}"
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}