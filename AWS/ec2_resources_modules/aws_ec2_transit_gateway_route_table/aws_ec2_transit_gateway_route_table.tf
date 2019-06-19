resource "aws_ec2_transit_gateway_route_table" "aws_ec2_transit_gateway_route_table" {
  transit_gateway_id = "${var.transit_gateway_id}"
  tags {
    Name = "${var.aws_ec2_transit_gateway_route_table_tag_name}"
  }
}