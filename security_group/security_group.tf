resource "aws_security_group" "security_group_1" {
  name = "allow_${var.traffic_name}_trafic"
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "security_group_${var.project}"
  }
}