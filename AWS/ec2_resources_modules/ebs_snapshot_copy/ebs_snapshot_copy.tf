resource "aws_ebs_snapshot_copy" "ebs_snapshot_copy" {
  source_region = "${var.source_snapshot_region}"
  source_snapshot_id = "${var.source_snapshot_id_arn}"
  description = "${var.ebs_snapshot_copy_description}"
  encrypted = "${var.ebs_snapshot_copy_encrypted}"
  kms_key_id = "${var.arn_of_encryption_key}"
  tags {
    Name = "${var.ebs_snapshot_copy_tag}"
    }
}
