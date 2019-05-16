resource "aws_subnet" "subnet_1" {
  cidr_block = "${var.subnet_1_cidr}"
  vpc_id = "${var.vpc_id}"
  availability_zone = "${var.availability_zone}"
  map_public_ip_on_launch = true
  tags {
    Name = "subnet_${var.project}"
  }
}