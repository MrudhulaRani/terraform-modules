resource "aws_vpc" "vpc_1" {
  cidr_block = "${var.vpc_1_cidr}"
  tags {
    Name = "vpc-${var.project}"
  }
}