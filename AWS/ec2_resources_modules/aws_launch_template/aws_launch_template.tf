resource "aws_launch_template" "aws_launch_template" {
  name = "${var.aws_launch_template_name}"
  description = "${var.aws_launch_template_description}"
  block_device_mappings {
    device_name = "${var.block_device_mappings_device_name}"
    no_device = "${var.block_device_mappings_no_device}"
    virtual_name = "${var.block_device_mappings_virtual_name}"
    ebs {
      delete_on_termination = "${var.ebs_delete_on_termination}"
      encrypted = "${var.ebs_encrypted}"
      iops = "${var.ebs_iops}"
      kms_key_id = "${var.kms_key_id}"
      snapshot_id = "${var.ebs_snapshot_id}"
      volume_size = "${var.ebs_volume_size}"
      volume_type = "${var.ebs_volume_type}"
    }
  }
  capacity_reservation_specification {
    capacity_reservation_preference = "${var.capacity_reservation_preference}"
    capacity_reservation_target {
      capacity_reservation_id = "${var.capacity_reservation_id}"
    }
  }
  credit_specification {
    cpu_credits = "${var.cpu_credits}"
  }
  disable_api_termination = "${var.disable_api_termination}"
  ebs_optimized = "${var.ebs_optimized}"
  elastic_gpu_specifications {
    type = "${var.elastic_gpu_specifications_type}"
  }
  elastic_inference_accelerator {
    type = "${var.elastic_inference_accelerator_type}"
  }
  iam_instance_profile {
    arn = "${var.iam_instance_profile_arn}"
    name = "${var.iam_instance_profile_name}"
  }
  image_id = "${var.ami_to_launch}"
  instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"
  instance_market_options {
    market_type = "${var.instance_market_options_market_type}"
    spot_options {
      block_duration_minutes = "${var.spot_options_block_duration_minutes}"
      instance_interruption_behavior = "${var.spot_options_instance_interruption_behavior}"
      max_price = "${var.spot_options_max_price}"
      spot_instance_type = "${var.spot_instance_type}"
      valid_until = "${var.spot_options_valid_until}"
    }
  }
  instance_type = "${var.instance_type}"
  kernel_id = "${var.kernel_id}"
  key_name = "${var.key_name}"
  license_specification {
    license_configuration_arn = "${var.license_configuration_arn}"
  }
  monitoring {
    enabled = "${var.monitoring_enabled}"
  }
  network_interfaces {
    associate_public_ip_address = "${var.associate_public_ip_address}"
    delete_on_termination = "${var.delete_on_termination}"
    description = "${var.network_interfaces_description}"
    device_index = "${var.network_interfaces_device_index}"
    ipv4_addresses = ["${var.ipv4_addresses}"]
    ipv4_address_count = "${var.ipv4_address_count}"
    network_interface_id = "${var.network_interface_id}"
    private_ip_address = "${var.private_ip_address}"
    ipv6_addresses = ["${var.ipv6_addresses}"]
    ipv6_address_count = "${var.ipv6_address_count}"
    security_groups = ["${var.security_groups}"]
    subnet_id = "${var.subnet_id}"
  }
  placement {
    affinity = "${var.instance_affinity}"
    availability_zone = "${var.instance_availability_zone}"
    group_name = "${var.instance_placement_group_name}"
    host_id = "${var.instance_host_id}"
    spread_domain = "${var.spread_domain}"
    tenancy = "${var.tenancy}"
  }
  tag_specifications {
    resource_type = "${var.tag_specifications_resource_type}"
    tags {
      Name = "${var.resource_tag_specifications_name}"
    }
  }
  ram_disk_id = "${var.ram_disk_id}"
  security_group_names = ["${var.security_group_names}"]
  tag_specifications {
    Name = "${var.aws_launch_template_tag_name}"
  }
  user_data = "${var.user_data}"
}