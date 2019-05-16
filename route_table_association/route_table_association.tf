resource "aws_route_table_association" "route_table_association_1" {
  route_table_id = "${var.route_table_id}"
  subnet_id = "${var.subnet_id}"
}