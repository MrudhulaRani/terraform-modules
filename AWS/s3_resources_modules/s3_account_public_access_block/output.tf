output "aws_account_id" {
  value = "${aws_s3_account_public_access_block.s3_account_public_access_block.id}"
}