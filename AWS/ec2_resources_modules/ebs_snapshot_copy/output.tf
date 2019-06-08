output "ebs_snapshot_copy_ID" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.id}"
}

output "AWS_account_ID_of_the_EBS_snapshot_copy_owner" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.owner_id}"
}

output "Value_from_an_Amazon_maintained_list_of_snapshot_owners" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.owner_alias}"
}

output "ebs_snapshot_copy_encrypted" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.encrypted}"
}

output "ebs_snapshot_copy_volume_size" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.volume_size}"
}

output "ARN_of_KMS_encryption_key." {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.kms_key_id}"
}

output "ebs_snapshot_copy_data_encryption_key_id" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.data_encryption_key_id}"
}

output "ebs_snapshot_copy_tags" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.tags}"
}

output "ebs_snapshot_source_ID" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.source_snapshot_id}"
}

output "ebs_snapshot_source_region" {
  value = "${aws_ebs_snapshot_copy.ebs_snapshot_copy.source_region}"
}