resource "aws_snapshot_create_volume_permission" "snapshot_create_volume_permission" {
  account_id = "${var.account_id}"
  snapshot_id = "${var.snapshot_id}"
}