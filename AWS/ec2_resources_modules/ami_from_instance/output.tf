output "ami_id" {
  value = "${aws_ami_from_instance.ami_from_instance.id}"
}