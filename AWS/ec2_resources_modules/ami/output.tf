output "ami_id" {
  value = "${aws_ami.ami.id}"
}

output "ami_root_snapshot_id" {
  value = "${aws_ami.ami.root_snapshot_id}"
}