resource "aws_eip_association" "aws_eip_association" {
  allocation_id = "${var.aws_eip_id}"
  instance_id = "${var.instance_id}"
  allow_reassociation = "${var.allow_reassociation}"
  network_interface_id = "${var.network_interface_id}"
  private_ip_address = "${var.private_ip_address}"
  public_ip = "${var.elastic_ip_address}"
}