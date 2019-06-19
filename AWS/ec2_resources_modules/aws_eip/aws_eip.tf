resource "aws_eip" "aws_eip" {
  vpc = "${var.vpc_eip}"
  instance = "${var.instance_id}"
  network_interface = "${var.network_interface}"
  associate_with_private_ip = "${var.associate_with_private_ip}"
  public_ipv4_pool = "${var.public_ipv4_pool}"
  tags {
    Name = "${var.aws_eip_tag_name}"
  }
}