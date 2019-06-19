resource "aws_ec2_transit_gateway" "aws_ec2_transit_gateway" {
  amazon_side_asn = "${var.amazon_side_asn}"
  auto_accept_shared_attachments = "${var.auto_accept_shared_attachments}"
  default_route_table_association = "${var.default_route_table_association}"
  default_route_table_propagation = "${var.default_route_table_propagation}"
  description = "${var.aws_ec2_transit_gateway_description}"
  dns_support = "${var.dns_support}"
  vpn_ecmp_support = "${var.vpn_ecmp_support}"
  tags {
    Name = "${var.aws_ec2_transit_gateway_tag_name}"
  }
}