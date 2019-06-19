output "aws_eip_id" {
  value = "${aws_eip.aws_eip.id}"
}
output "aws_eip_private_ip" {
  value = "${aws_eip.aws_eip.private_ip}"
}
output "aws_eip_associate_with_private_ip" {
  value = "${aws_eip.aws_eip.associate_with_private_ip}"
}
output "aws_eip_public_ip" {
  value = "${aws_eip.aws_eip.public_ip}"
}
output "aws_eip_instance" {
  value = "${aws_eip.aws_eip.instance}"
}
output "aws_eip_network_interface" {
  value = "${aws_eip.aws_eip.network_interface}"
}
output "aws_eip_public_ipv4_pool" {
  value = "${aws_eip.aws_eip.public_ipv4_pool}"
}

