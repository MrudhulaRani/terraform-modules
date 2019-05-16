resource "aws_internet_gateway" "internet_gateway_1" {
  vpc_id = "${var.vpc_id}"
}