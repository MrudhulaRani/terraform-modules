output "aws_eip_association_allocation_id" {
  value = "${aws_eip_association.aws_eip_association.allocation_id}"
}
output "aws_eip_association_instance_id" {
  value = "${aws_eip_association.aws_eip_association.instance_id}"
}
output "aws_eip_association_network_interface_id" {
  value = "${aws_eip_association.aws_eip_association.network_interface_id}"
}
output "aws_eip_association_private_ip_address" {
  value = "${aws_eip_association.aws_eip_association.private_ip_address}"
}
output "aws_eip_association_public_ip" {
  value = "${aws_eip_association.aws_eip_association.public_ip}"
}