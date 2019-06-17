resource "aws_s3_bucket_metric" "s3_bucket_metric" {
  bucket = "${var.s3_bucket_name}"
  name = "${var.metric_unique_identifier}"
  filter {
    prefix = "${var.object_prefix}"
    tags {
      Name = "${var.object_fitering_tag_name}"
      Value = "${var.object_fitering_tag_value}"
    }
  }
}