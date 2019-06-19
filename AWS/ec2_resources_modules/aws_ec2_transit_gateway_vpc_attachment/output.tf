output "aws_ec2_transit_gateway_vpc_attachment_id" {
  value = "${aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.id}"
}
output "aws_ec2_transit_gateway_vpc_attachment_vpc_owner_id" {
  value = "${aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.vpc_owner_id}"
}