resource "aws_ami" "ami" {
  name = "${var.ami_name}"
  description = "${var.ami_description}"
  root_device_name = "${var.ami_root_device_name}"
  #The name of the root device (for example, /dev/sda1, or /dev/xvda).
  virtualization_type = "${var.ami_virtualization_type}"
  #Keyword to choose what virtualization mode created instances will use.
  #Can be either "paravirtual" (the default) or "hvm".
  #The choice of virtualization type changes the set of further arguments that are required, as described below.
  architecture = "${var.ami_architecture}"
  #Machine architecture for created instances. Defaults to "x86_64"
  ebs_block_device {
    device_name = "${var.ami_instance_path}"
    #(Required) The path at which the device is exposed to created instances.
    snapshot_id = "${var.snapshot_id}"
    volume_size = "${var.volume_size}"
  }
}