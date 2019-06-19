resource "aws_spot_instance_request" "aws_spot_instance_request" {
  ami = "${var._spot_instance_ami}"
  instance_type = "${var.spot_instance_type}"
  spot_price = "${var.spot_price}"
  wait_for_fulfillment = "${var.wait_for_fulfillment}"
  spot_type = "${var.spot_type}"
  launch_group = "${var.launch_group_for_spot_instance}"
  block_duration_minutes = "${var.block_duration_minutes}"
  instance_interruption_behaviour = "${var.instance_interruption_behaviour}"
  valid_from = "${var.request_start_date_time}"
  valid_until = "${var.request_end_date_time}"
  tags {
    Name = "${var.aws_spot_instance_request_tag_name}"
  }
}