resource "aws_ec2_capacity_reservation" "ec2_capacity_reservation" {
  availability_zone = "${var.availability_zone}"
  instance_count = "${var.number_of_instances}"
  instance_platform = "${var.instance_os_type}"
  instance_type = "${var.instance_type}"
  tags {
    Name = "${var.ec2_capacity_reservation_tags}"
  }
}