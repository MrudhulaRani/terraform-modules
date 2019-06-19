output "aws_ec2_transit_gateway_id" {
  value = "${aws_ec2_transit_gateway.aws_ec2_transit_gateway.id}"
}
output "aws_ec2_transit_gateway_arn" {
  value = "${aws_ec2_transit_gateway.aws_ec2_transit_gateway.arn}"
}
output "aws_ec2_transit_gateway_association_default_route_table_id" {
  value = "${aws_ec2_transit_gateway.aws_ec2_transit_gateway.association_default_route_table_id}"
}
output "aws_ec2_transit_gateway_owner_id" {
  value = "${aws_ec2_transit_gateway.aws_ec2_transit_gateway.owner_id}"
}
output "aws_ec2_transit_gateway_propagation_default_route_table_id" {
  value = "${aws_ec2_transit_gateway.aws_ec2_transit_gateway.propagation_default_route_table_id}"
}
