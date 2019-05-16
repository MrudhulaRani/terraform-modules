resource "aws_internet_gateway" "internet_gateway_1" {
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "internet_gateway_${var.project}"
  }
}