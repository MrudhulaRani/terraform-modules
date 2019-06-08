resource "aws_ami_launch_permission" "ami_launch_permission" {
  account_id = "${var.aws_account_id}"
  image_id = "${var.ami_region_unique_name}"
}