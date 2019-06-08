resource "aws_ami_copy" "ami_copy" {
  name = "${var.ami_region_unique_name}"
  source_ami_id = "${var.source_ami_id}"
  source_ami_region = "${var.source_ami_region}"
  encrypted = "${var.ami_snapshot_encrypted}"
  # (Optional) Specifies whether the destination snapshots of the copied image should be encrypted. Defaults to false
  kms_key_id = "${var.ami_arn_of_the_kms_key_id}"
  #(Optional) The full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation.
  #If not specified, then the default AWS KMS Key will be used
  tags {
    Name = "${var.ami_tag}"
  }
}