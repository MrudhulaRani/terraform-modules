resource "aws_instance" "instance_1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${var.security_group_id}"]
  key_name = "${var.key_name}"
  user_data = "${var.user_data}"
  tags {
    Name = "instance_${var.project}"
  }
}