output "subnet_id" {
  value = "${aws_subnet.subnet_1.id}"
}
output "subnet_cidr" {
  value = "${aws_subnet.subnet_1.cidr_block}"
}