resource "aws_ebs_snapshot" "ebs_snapshot" {
  volume_id = "${var.volume_id}"
  description = "${var.ebs_snapshot_description}"
  tags {
    Name = "${var.ebs_snapshot}"
  }
}