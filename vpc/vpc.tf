resource "aws_vpc" "vpc-1" {
  cidr_block = "${var.vpc-cidr}"
}
resource "aws_internet_gateway" "igw-1" {
  vpc_id = "${aws_vpc.vpc-1.id}"
}