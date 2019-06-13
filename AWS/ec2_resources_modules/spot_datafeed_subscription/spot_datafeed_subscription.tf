resource "aws_spot_datafeed_subscription" "spot_datafeed_subscription" {
  bucket = "${var.s3_bucket}"
  prefix = "${var.Path_of_folder_inside_bucket}"
}