output "ebs_snapshot_ID" {
  value = "${aws_ebs_snapshot.ebs_snapshot.id}"
}

output "AWS_account_ID_of_the_EBS_snapshot_owner" {
  value = "${aws_ebs_snapshot.ebs_snapshot.owner_id}"
}

output "Value_from_an_Amazon_maintained_list_of_snapshot_owners" {
  value = "${aws_ebs_snapshot.ebs_snapshot.owner_alias}"
}

output "ebs_snapshot_encrypted" {
  value = "${aws_ebs_snapshot.ebs_snapshot.encrypted}"
}

output "ebs_snapshot_volume_size" {
  value = "${aws_ebs_snapshot.ebs_snapshot.volume_size}"
}

output "ARN_of_KMS_encryption_key." {
  value = "${aws_ebs_snapshot.ebs_snapshot.kms_key_id}"
}

output "ebs_snapshot_data_encryption_key_id" {
  value = "${aws_ebs_snapshot.ebs_snapshot.data_encryption_key_id}"
}

output "ebs_snapshot_tags" {
  value = "${aws_ebs_snapshot.ebs_snapshot.tags}"
}