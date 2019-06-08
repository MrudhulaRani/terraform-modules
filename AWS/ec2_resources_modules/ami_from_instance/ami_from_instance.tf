resource "aws_ami_from_instance" "ami_from_instance" {
  name = "${var.ami_region_unique_name}"
  source_instance_id = "${var.source_instance_id}"
  tags {
    Name = "${var.ami_from_instance_tag}"
  }
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
  #(Optional) Boolean that overrides the behavior of stopping the instance before snapshotting.
  # this is risky since it may cause a snapshot of an inconsistent filesystem state,
  # but can be used to avoid downtime if the user otherwise guarantees that no filesystem writes will be underway at the time of snapshot.

}