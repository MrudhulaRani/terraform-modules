output "aws_volume_attachment_device_name" {
  value = "${aws_volume_attachment.volume_attachment.device_name}"
}

output "aws_volume_attachment_instance_id" {
  value = "${aws_volume_attachment.volume_attachment.instance_id}"
}

output "aws_volume_attachment_volume_id" {
  value = "${aws_volume_attachment.volume_attachment.volume_id}"
}