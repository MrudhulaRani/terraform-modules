output "s3_bucket_object_id" {
  value = "${aws_s3_bucket_object.s3_bucket_object.id}"
}
#output.tf "s3_bucket_object_etag" {
# value = "${aws_s3_bucket_object.s3_bucket_object.etag}"
#}
output "s3_bucket_object_version_id" {
  value = "${aws_s3_bucket_object.s3_bucket_object.version_id}"
}