resource "aws_s3_bucket_metric" "s3_bucket_metric" {
  bucket = "${var.s3_bucket_name}"
  name = "${var.metric_unique_identifier}"
}