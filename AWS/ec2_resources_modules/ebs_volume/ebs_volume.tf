resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "${var.ebs_volume_availability_zone}"
  size = "${var.size_of_drive_in_GBs}"
  encrypted = "${var.ebs_volume_encrypted}"
  iops = "${var.disk_iops}"
  snapshot_id = "${var.snapshot_id}"
  type = "${var.ebs_volume_type}"
  kms_key_id = "${var.kms_key_id_arn}"
  tags {
    Name = "${var.ebs_volume_tag}"
  }
}