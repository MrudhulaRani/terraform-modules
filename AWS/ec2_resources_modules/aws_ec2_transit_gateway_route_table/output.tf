output "aws_ec2_transit_gateway_route_table_id" {
  value = "${aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.id}"
}
output "aws_ec2_transit_gateway_route_table_default_association_route_table" {
  value = "${aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.default_association_route_table}"
}
output "aws_ec2_transit_gateway_route_table_default_propagation_route_table" {
  value = "${aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.default_propagation_route_table}"
}