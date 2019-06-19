resource "aws_launch_configuration" "aws_launch_configuration" {
  image_id = "${var.image_id}"
  instance_type = "${var.instance_type_size}"
  name = "${var.aws_launch_configuration_name}"
  iam_instance_profile = "${var.iam_instance_profile}"
  key_name = "${var.key_name}"
  security_groups = ["${var.security_groups_id}"]
  associate_public_ip_address = "${var.associate_public_ip_address}"
  user_data = "${var.user_data}"
  enable_monitoring = "${var.enable_monitoring}"
  root_block_device {
    volume_size = "${var.root_block_device_volume_size}"
    volume_type = "${var.root_block_device_volume_type}"
    iops = "${var.root_block_device}"
    delete_on_termination = "${var.root_block_device_delete_on_termination}"
  }
  ebs_block_device {
    device_name = "${var.ebs_block_device_device_name}"
    snapshot_id = "${var.ebs_block_device_snapshot_id}"
    volume_size = "${var.ebs_block_device_volume_size}"
    volume_type = "${var.ebs_block_device_volume_type}"
    iops = "${var.ebs_block_device_iops}"
    delete_on_termination = "${var.ebs_block_device_delete_on_termination}"
    encrypted = "${var.ebs_block_device_encrypted}"
  }
  ephemeral_block_device {
    device_name = "${var.ephemeral_block_device_device_name}"
    virtual_name = "${var.ephemeral_block_device_Instance_Store_Device_Name}"
  }
  spot_price = "${var.spot_price}"
  placement_tenancy = "${var.placement_tenancy}"
}