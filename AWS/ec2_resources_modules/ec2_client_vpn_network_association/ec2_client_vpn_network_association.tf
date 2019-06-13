resource "aws_ec2_client_vpn_network_association" "ec2_client_vpn_network_association" {
  client_vpn_endpoint_id = "${var.client_vpn_endpoint_id}"
  subnet_id = "${var.subnet_id}"
}