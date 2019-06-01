resource "aws_route_table" "route_table_1" {
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "route_table_${var.project}"
  }
}