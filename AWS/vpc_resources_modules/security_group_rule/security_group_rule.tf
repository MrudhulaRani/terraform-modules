resource "aws_security_group_rule" "security_group_rule_1" {
  from_port = 0
  protocol = "tcp"
  security_group_id = "${var.security_group_id}"
  to_port = 65535
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "security_group_rule_2" {
  from_port = 0
  protocol = "-1"
  security_group_id = "${var.security_group_id}"
  to_port = 65535
  type = "egress"
  cidr_blocks = ["0.0.0.0/0"]
}
