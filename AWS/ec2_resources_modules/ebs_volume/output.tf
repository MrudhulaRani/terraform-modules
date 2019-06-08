output "ebs_volume_id" {
  value = "${aws_ebs_volume.ebs_volume.id}"
}

output "ebs_volume_arn" {
  value = "${aws_ebs_volume.ebs_volume.arn}"
}